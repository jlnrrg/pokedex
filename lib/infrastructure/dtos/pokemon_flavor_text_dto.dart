import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_flavor_text_dto.freezed.dart';

@freezed
class PokemonFlavorTextDTO with _$PokemonFlavorTextDTO {
  const factory PokemonFlavorTextDTO({
    required String flavor_text,
    required String language_code,
    required String version,
  }) = _PokemonFlavorTextDTO;

  const PokemonFlavorTextDTO._();

  factory PokemonFlavorTextDTO.fromJson(Map<String, dynamic> json) =>
      PokemonFlavorTextDTO(
        flavor_text: json['flavor_text'],
        language_code: json['language']['name'],
        version: json['version']['name'],
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        "flavor_text": flavor_text,
        "language": {"name": language_code},
        "version": {"name": version},
      };
}
