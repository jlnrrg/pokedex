import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_listentry_dto.freezed.dart';
part 'pokemon_listentry_dto.g.dart';

@freezed
class PokemonListentryDTO with _$PokemonListentryDTO {
  const factory PokemonListentryDTO({
    required String name,
    required String url,
  }) = _PokemonListentryDTO;

  const PokemonListentryDTO._();

  factory PokemonListentryDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonListentryDTOFromJson(json);
}
