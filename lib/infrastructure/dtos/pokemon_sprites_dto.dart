import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/sprites.dart';

part 'pokemon_sprites_dto.freezed.dart';
part 'pokemon_sprites_dto.g.dart';

@freezed
class PokemonSpritesDTO with _$PokemonSpritesDTO {
  const factory PokemonSpritesDTO({
    String? front_default,
    String? front_shiny,
    String? front_female,
    String? front_shiny_female,
    String? back_default,
    String? back_shiny,
    String? back_female,
    String? back_shiny_female,
  }) = _PokemonSpritesDTO;

  const PokemonSpritesDTO._();

  factory PokemonSpritesDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesDTOFromJson(json);

  Sprites toDomain() => Sprites(
        frontDefault: front_default,
        frontShiny: front_shiny,
        frontFemale: front_female,
        frontShinyFemale: front_shiny_female,
        backDefault: back_default,
        backShiny: back_shiny,
        backFemale: back_female,
        backShinyFemale: back_shiny_female,
      );
}
