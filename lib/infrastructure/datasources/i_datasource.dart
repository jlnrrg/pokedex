import 'package:pokedex/infrastructure/dtos/pokemon_listentry_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';

abstract class IDatasource {
  Future<List<PokemonWrapperDTO>> getAllPokemon();
}
