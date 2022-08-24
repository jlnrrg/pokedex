import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_color.freezed.dart';
part 'pokemon_color.g.dart';

@freezed
class PokemonColor with _$PokemonColor {
  const factory PokemonColor.black() = _Black;
  const factory PokemonColor.blue() = _Blue;
  const factory PokemonColor.brown() = _Brown;
  const factory PokemonColor.gray() = _Gray;
  const factory PokemonColor.green() = _Green;
  const factory PokemonColor.pink() = _Pink;
  const factory PokemonColor.purple() = _Purple;
  const factory PokemonColor.red() = _Red;
  const factory PokemonColor.white() = _White;
  const factory PokemonColor.yellow() = _Yellow;

  const PokemonColor._();

  factory PokemonColor.fromJson(Map<String, dynamic> json) =>
      _$PokemonColorFromJson(json);

  Color toColor() => when(
        black: () => Colors.black,
        blue: () => Colors.blueAccent,
        brown: () => Colors.brown,
        gray: () => Colors.grey,
        green: () => Colors.greenAccent,
        pink: () => Colors.pinkAccent,
        purple: () => Colors.purpleAccent,
        red: () => Colors.redAccent,
        white: () => Colors.white,
        yellow: () => Colors.yellowAccent,
      );
}
