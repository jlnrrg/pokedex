import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon_types.dart';

part 'pokemon_type_dto.freezed.dart';
part 'pokemon_type_dto.g.dart';

@freezed
class PokemonTypeDTO with _$PokemonTypeDTO {
  const factory PokemonTypeDTO({required String name, required String url}) =
      _PokemonTypeDTO;

  const PokemonTypeDTO._();

  factory PokemonTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDTOFromJson(json);

  PokemonTypes toDomain() => PokemonTypes.fromJson({'runtimeType': name});
}
