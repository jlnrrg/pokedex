import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_flavor_text_dto.dart';

part 'pokemon_species_dto.freezed.dart';
part 'pokemon_species_dto.g.dart';

@freezed
class PokemonSpeciesDTO with _$PokemonSpeciesDTO {
  const factory PokemonSpeciesDTO(
      {required String evolution_chain_url,
      required int base_happiness,
      required int capture_rate,
      @JsonKey(fromJson: PokemonSpeciesDTO.colorFromJSON, toJson: PokemonSpeciesDTO.colorToJSON)
          required String color,
      required List<PokemonFlavorTextDTO>
          flavor_text_entries}) = _PokemonSpeciesDTO;

  const PokemonSpeciesDTO._();

  factory PokemonSpeciesDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesDTOFromJson(json);

  static String colorFromJSON(Map<String, dynamic> input) =>
      input['color']['name'];

  static Map<String, dynamic> colorToJSON(String input) => {
        "color": {"name": input}
      };
}
