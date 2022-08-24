import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon_types.dart';

class PokemonTypesWrap extends StatelessWidget {
  const PokemonTypesWrap({
    Key? key,
    required this.types,
  }) : super(key: key);

  final List<PokemonTypes> types;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 4,
      spacing: 4,
      children: types.map((e) {
        final backgroundColor = e.toColor();

        final textColor =
            ThemeData.estimateBrightnessForColor(backgroundColor) ==
                    Brightness.light
                ? Colors.black
                : Colors.white;

        return Chip(
            label: Text(
              e.toString(),
              style: TextStyle(color: textColor),
            ),
            // avatar: SvgPicture.asset(e.toSvgPath()),
            backgroundColor: backgroundColor);
      }).toList(),
    );
  }
}
