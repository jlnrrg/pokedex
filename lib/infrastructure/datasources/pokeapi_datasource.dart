import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/model_failure.dart';
import 'package:pokedex/infrastructure/core/http_exception.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_detail_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_listentry_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_species_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_sprites_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_type_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';
import 'package:pokedex/infrastructure/service/i_http_service.dart';

class PokeAPIDatasource implements IDatasource {
  PokeAPIDatasource({required this.httpService});

  final IHttpService httpService;

  @override
  Future<Either<ModelFailure, PokemonWrapperDTO>> getPokemonByUrl(
      String url) async {
    final apiEither = await _callApi(url);
    final Either<ModelFailure, PokemonWrapperDTO> r =
        await apiEither.fold((l) => left(l), (jsonDetail) async {
      try {
        final detail = PokemonDetailDTO.fromJson(jsonDetail);
        final sprites = PokemonSpritesDTO.fromJson(jsonDetail['sprites']);

        final types = (jsonDetail['types'] as List).map((e) {
          return PokemonTypeDTO.fromJson(e['type']);
        }).toList();

        final apiSpeciesEither = await _callApi(detail.speciesUrl);
        return apiSpeciesEither.fold((l) {
          return left(l);
        }, (jsonSpecies) {
          final species = PokemonSpeciesDTO.fromJson(jsonSpecies);

          final pokemon = PokemonWrapperDTO(
              detail: detail, sprites: sprites, species: species, types: types);
          return right(pokemon);
        });
      } on Exception catch (e) {
        return left(ModelFailure.parsing(e.toString()));
      }
    });
    return r;
  }

  @override
  Future<Either<ModelFailure, List<PokemonWrapperDTO>>> getAllPokemon() async =>
      getPokemons(limit: 10000, page: 0);

  @override
  Future<Either<ModelFailure, List<PokemonWrapperDTO>>> getPokemons(
      {required int limit, required int page}) async {
    final apiEither = await _callApi('pokemon?limit=$limit&offset=$page');
    final Either<ModelFailure, List<PokemonWrapperDTO>> r =
        await apiEither.fold((l) => left(l), (jsonData) async {
      final pokelist = jsonData['results'] as List;

      List<PokemonWrapperDTO> list = [];
      for (final jsonPokeEntry in pokelist) {
        final listentry = PokemonListentryDTO.fromJson(jsonPokeEntry);
        final pokemon = await getPokemonByUrl(listentry.url);

        // if pokemon had errors, do nothing. else append
        pokemon.fold((l) => null, (r) => list.add(r));
      }
      return right(list);
    });
    return r;
  }

  Future<Either<ModelFailure, dynamic>> _callApiExpectResults(
      String url) async {
    try {
      final response = await httpService.get(url);
      final j = json.decode(response['results']);
      if (j == null) return left(const ModelFailure.jsonNull());
      return right(j);
    } on HttpException catch (e) {
      return left(ModelFailure.network(e.message ?? ''));
    } on FormatException catch (e) {
      return left(ModelFailure.parsing(e.message));
    } catch (e) {
      return left(ModelFailure.unexpected(e.toString()));
    }
  }

  Future<Either<ModelFailure, Map<String, dynamic>>> _callApi(
      String url) async {
    try {
      final response = await httpService.get(url) as Map<String, dynamic>;

      return right(response);
    } on HttpException catch (e) {
      return left(ModelFailure.network(e.message ?? ''));
    } on FormatException catch (e) {
      return left(ModelFailure.parsing(e.message));
    } catch (e) {
      return left(ModelFailure.unexpected(e.toString()));
    }
  }

  @override
  Future<Either<ModelFailure, PokemonWrapperDTO>> getPokemon(
          String identifier) =>
      getPokemonByUrl('pokemon/$identifier');
}
