import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/core/hexcolor_extension.dart';

part 'pokemon_types.freezed.dart';
part 'pokemon_types.g.dart';

@freezed
class PokemonTypes with _$PokemonTypes {
  const factory PokemonTypes.normal() = _Normal;
  const factory PokemonTypes.fire() = _Fire;
  const factory PokemonTypes.water() = _Water;
  const factory PokemonTypes.grass() = _Grass;
  const factory PokemonTypes.electric() = _Electric;
  const factory PokemonTypes.ice() = _Ice;
  const factory PokemonTypes.fighting() = _Fighting;
  const factory PokemonTypes.poison() = _Poison;
  const factory PokemonTypes.ground() = _Ground;
  const factory PokemonTypes.flying() = _Flying;
  const factory PokemonTypes.psychic() = _Psychic;
  const factory PokemonTypes.bug() = _Bug;
  const factory PokemonTypes.rock() = _Rock;
  const factory PokemonTypes.ghost() = _Ghost;
  const factory PokemonTypes.dark() = _Dark;
  const factory PokemonTypes.dragon() = _Dragon;
  const factory PokemonTypes.steel() = _Steel;
  const factory PokemonTypes.fairy() = _Fairy;

  const PokemonTypes._();

  factory PokemonTypes.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypesFromJson(json);

  // source: https://gist.github.com/apaleslimghost/0d25ec801ca4fc43317bcff298af43c3
  String _toHex() => when(
        normal: () => '#A8A77A',
        fire: () => '#EE8130',
        water: () => '#6390F0',
        grass: () => '#7AC74C',
        electric: () => '#F7D02C',
        ice: () => '#96D9D6',
        fighting: () => '#C22E28',
        poison: () => '#A33EA1',
        ground: () => '#E2BF65',
        flying: () => '#A98FF3',
        psychic: () => '#F95587',
        bug: () => '#A6B91A',
        rock: () => '#B6A136',
        ghost: () => '#735797',
        dark: () => '#705746',
        dragon: () => '#6F35FC',
        steel: () => '#B7B7CE',
        fairy: () => '#D685AD',
      );

  Color toColor() => HexColor.fromHex(_toHex());

  String toSvgPath() => 'assets/types/Pokémon_${toString()}_Type_Icon.svg';

  @override
  String toString() => when(
        normal: () => 'Normal',
        fire: () => 'Fire',
        water: () => 'Water',
        grass: () => 'Grass',
        electric: () => 'Electric',
        ice: () => 'Ice',
        fighting: () => 'Fighting',
        poison: () => 'Poison',
        ground: () => 'Ground',
        flying: () => 'Flying',
        psychic: () => 'Psychic',
        bug: () => 'Bug',
        rock: () => 'Rock',
        ghost: () => 'Ghost',
        dark: () => 'Dark',
        dragon: () => 'Dragon',
        steel: () => 'Steel',
        fairy: () => 'Fairy',
      );
}
