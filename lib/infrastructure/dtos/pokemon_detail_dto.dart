import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_dto.freezed.dart';
part 'pokemon_detail_dto.g.dart';

@freezed
class PokemonDetailDTO with _$PokemonDetailDTO {
  const factory PokemonDetailDTO({
    required int id,
    required String name,
    required int height,
    required int weight,
    @JsonKey(name: 'species', fromJson: PokemonDetailDTO.speciesURLFromJSON, toJson: PokemonDetailDTO.speciesURLToJSON)
        required String speciesUrl,
  }) = _PokemonDetailDTO;

  const PokemonDetailDTO._();

  factory PokemonDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailDTOFromJson(json);

  static String speciesURLFromJSON(Map<String, dynamic> input) => input['url'];

  static Map<String, dynamic> speciesURLToJSON(String input) => {"url": input};
}
