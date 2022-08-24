import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_color.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_detail_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_listentry_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_species_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_sprites_dto.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_type_dto.dart';

part 'pokemon_wrapper_dto.freezed.dart';
part 'pokemon_wrapper_dto.g.dart';

@freezed
class PokemonWrapperDTO with _$PokemonWrapperDTO {
  const factory PokemonWrapperDTO({
    required PokemonDetailDTO detail,
    required List<PokemonTypeDTO> types,
    required PokemonSpritesDTO sprites,
    required PokemonSpeciesDTO species,
  }) = _PokemonWrapperDTO;

  const PokemonWrapperDTO._();

  factory PokemonWrapperDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonWrapperDTOFromJson(json);

  Pokemon toDomain() {
    return Pokemon(
        id: detail.id,
        name: detail.name,
        description: '',
        height: detail.height,
        weight: detail.weight,
        sprites: sprites.toDomain(),
        stats: [],
        types: [],
        color: PokemonColor.fromJson({'runtimeType': species.color}));
  }
}
