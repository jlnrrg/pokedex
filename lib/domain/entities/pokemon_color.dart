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

  // source: https://gist.github.com/apaleslimghost/0d25ec801ca4fc43317bcff298af43c3
  // String _toHex() => when(
  //       normal: () => '#A8A77A',
  //       fire: () => '#EE8130',
  //       water: () => '#6390F0',
  //       grass: () => '#7AC74C',
  //       electric: () => '#F7D02C',
  //       ice: () => '#96D9D6',
  //       fighting: () => '#C22E28',
  //       poison: () => '#A33EA1',
  //       ground: () => '#E2BF65',
  //       flying: () => '#A98FF3',
  //       psychic: () => '#F95587',
  //       bug: () => '#A6B91A',
  //       rock: () => '#B6A136',
  //       ghost: () => '#735797',
  //       dark: () => '#705746',
  //       dragon: () => '#6F35FC',
  //       steel: () => '#B7B7CE',
  //       fairy: () => '#D685AD',
  //     );

  // Color toColor() => HexColor.fromHex(_toHex());
}
