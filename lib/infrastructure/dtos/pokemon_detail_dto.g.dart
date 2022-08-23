// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetailDTO _$$_PokemonDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_PokemonDetailDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      speciesURL: PokemonDetailDTO.speciesURLFromJSON(
          json['speciesURL'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDetailDTOToJson(_$_PokemonDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'speciesURL': PokemonDetailDTO.speciesURLToJSON(instance.speciesURL),
    };
