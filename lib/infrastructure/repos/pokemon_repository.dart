import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repos/i_pokemon_repository.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';

class PokemonRepository implements IPokemonRepository {
  PokemonRepository({required this.apiDatasource});
  final IDatasource apiDatasource;

  @override
  Future<List<Pokemon>> getAllPokemon() async {
    final apiModels = await apiDatasource.getAllPokemon();
    return apiModels.map((e) => e.toDomain()).toList();
  }

  @override
  Future<Pokemon?> getPokemon(String identifier) async {
    final apiModel = await apiDatasource.getPokemon(identifier);
    return apiModel.toDomain();
  }

  @override
  Future<List<Pokemon>> getPokemons({required int limit, required int offset}) {
    // TODO: implement getPokemons
    throw UnimplementedError();
  }
}
