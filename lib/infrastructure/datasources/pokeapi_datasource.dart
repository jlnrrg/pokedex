import 'dart:convert';

import 'package:pokedex/infrastructure/datasources/i_datasource.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_detail_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_listentry_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_species_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_sprites_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';
import 'package:pokedex/infrastructure/service/i_http_service.dart';

class PokeAPIDatasource implements IDatasource {
  PokeAPIDatasource({required this.httpService});

  final IHttpService httpService;

  @override
  Future<List<PokemonWrapperDTO>> getAllPokemon() async {
    final response = await httpService.get('pokemon?limit=100000&offset=0');
    final pokelist = ((json.decode(response.data))['results'] as List);

    List<PokemonWrapperDTO> l = [];
    for (final jsonPokeEntry in pokelist) {
      final listentry = PokemonListentryDTO.fromJson(jsonPokeEntry);

      final jsonDetail = await _callApi(listentry.url);
      final detail = PokemonDetailDTO.fromJson(jsonDetail);
      final sprites = PokemonSpritesDTO.fromJson(jsonDetail['sprites']);

      final jsonSpecies = await _callApi(detail.speciesURL);
      final species = PokemonSpeciesDTO.fromJson(jsonSpecies);

      

      final pokemon = PokemonWrapperDTO(
        listentry: listentry,
        detail: detail,
        sprites: sprites,
        species: species,
        types: 
      );

      l.add(pokemon);
    }
    return l;
  }

  Future<dynamic> _callApi(String url) async {
    final response = await httpService.get(url);
    final j = json.decode(response.data);
  }
}
