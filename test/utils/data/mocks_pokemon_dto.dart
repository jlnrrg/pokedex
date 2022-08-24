import 'package:pokedex/infrastructure/dtos/pokemon_detail_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_species_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_sprites_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_type_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';

const mockPokemonDTO1 = PokemonWrapperDTO(
    detail: PokemonDetailDTO(
      id: 1,
      name: 'bulbasaur',
      height: 7,
      weight: 69,
      speciesUrl: 'https://pokeapi.co/api/v2/pokemon-species/1/',
    ),
    species: PokemonSpeciesDTO(
      base_happiness: 50,
      capture_rate: 45,
      color: 'green',
      flavor_text_entries: [], //! TODO(jr): do it
    ),
    types: [
      PokemonTypeDTO(name: 'grass', url: 'https://pokeapi.co/api/v2/type/12/'),
      PokemonTypeDTO(name: 'poison', url: 'https://pokeapi.co/api/v2/type/4/'),
    ],
    sprites: PokemonSpritesDTO(
      back_default:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png",
      back_female: null,
      back_shiny:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/1.png",
      back_shiny_female: null,
      front_default:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
      front_female: null,
      front_shiny:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
      front_shiny_female: null,
    ));

final mockPokemon1 = mockPokemonDTO1.toDomain();
