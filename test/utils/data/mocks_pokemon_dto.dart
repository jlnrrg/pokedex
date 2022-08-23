import 'package:pokedex/infrastructure/dtos/pokemon_listentry_dto.dart';

final mockPokemonDTO1 = PokemonDTO.withValues(id: 1, name: 'bulbasaur');
final mockPokemonDTO2 = PokemonDTO.withValues(id: 2, name: 'ivysaur');
final mockPokemonDTO3 = PokemonDTO.withValues(id: 3, name: 'venusaur');
final mockPokemonDTO4 = PokemonDTO.withValues(id: 4, name: 'charmander');

final mockPokemonDTOList = [
  mockPokemonDTO1,
  mockPokemonDTO2,
  mockPokemonDTO3,
  mockPokemonDTO4
];

final mockPokemonList = mockPokemonDTOList.map((e) => e.toDomain()).toList();
