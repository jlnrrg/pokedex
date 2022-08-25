import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites.freezed.dart';

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    String? frontDefault,
    String? frontShiny,
    String? frontFemale,
    String? frontShinyFemale,
    String? backDefault,
    String? backShiny,
    String? backFemale,
    String? backShinyFemale,
  }) = _Sprites;

  const Sprites._();

  String get anyFrontOrEmpty =>
      frontDefault ?? frontFemale ?? frontShiny ?? frontShinyFemale ?? '';

  String get anyBackOrEmpty =>
      backDefault ?? backFemale ?? backShiny ?? backShinyFemale ?? '';
}
