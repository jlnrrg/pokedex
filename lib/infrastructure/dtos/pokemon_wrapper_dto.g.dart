// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_wrapper_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonWrapperDTO _$$_PokemonWrapperDTOFromJson(Map<String, dynamic> json) =>
    _$_PokemonWrapperDTO(
      detail: PokemonDetailDTO.fromJson(json['detail'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites:
          PokemonSpritesDTO.fromJson(json['sprites'] as Map<String, dynamic>),
      species:
          PokemonSpeciesDTO.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonWrapperDTOToJson(
        _$_PokemonWrapperDTO instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'types': instance.types,
      'sprites': instance.sprites,
      'species': instance.species,
    };
