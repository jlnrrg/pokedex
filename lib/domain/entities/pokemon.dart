import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon_stat.dart';
import 'package:pokedex/domain/entities/pokemon_types.dart';
import 'package:pokedex/domain/entities/sprites.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    String? description,
    String? region,
    required int height,
    required int weight,
    @Default(<PokemonTypes>[]) List<PokemonTypes> types,
    required Sprites sprites,
    required List<PokemonStat> stats,
    Color? color,
  }) = _Pokemon;

  const Pokemon._();
}
