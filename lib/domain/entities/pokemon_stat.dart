import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat.freezed.dart';

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required int id,
    required String name,
    required int effort,
    required int base,
  }) = _PokemonStat;

  const PokemonStat._();
}
