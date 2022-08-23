// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonSpeciesDTO _$$_PokemonSpeciesDTOFromJson(Map<String, dynamic> json) =>
    _$_PokemonSpeciesDTO(
      evolution_chain_url: json['evolution_chain_url'] as String,
      base_happiness: json['base_happiness'] as int,
      capture_rate: json['capture_rate'] as int,
      color: PokemonSpeciesDTO.colorFromJSON(
          json['color'] as Map<String, dynamic>),
      flavor_text_entries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => PokemonFlavorTextDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonSpeciesDTOToJson(
        _$_PokemonSpeciesDTO instance) =>
    <String, dynamic>{
      'evolution_chain_url': instance.evolution_chain_url,
      'base_happiness': instance.base_happiness,
      'capture_rate': instance.capture_rate,
      'color': PokemonSpeciesDTO.colorToJSON(instance.color),
      'flavor_text_entries': instance.flavor_text_entries,
    };
