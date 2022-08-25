import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/core/extensions/string_extension.dart';
import 'package:pokedex/view/widgets/pokemon/pokemon_image.dart';
import 'package:pokedex/view/widgets/pokemon/type/pokemon_types_warp.dart';

class PokemonTile extends StatelessWidget {
  const PokemonTile({
    Key? key,
    required this.pokemon,
    this.onTap,
  }) : super(key: key);

  final Pokemon pokemon;
  final VoidCallback? onTap;

  ShapeBorder get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      );

  double get height => 110;

  List<Color> get gradientList {
    final backgroundColor = pokemon.color.toColor().withOpacity(0.5);

    if (pokemon.types.length >= 2) {
      return pokemon.types.map((e) => e.toColor().withOpacity(0.5)).toList();
    } else if (pokemon.types.length == 1) {
      return [
        pokemon.types.first.toColor().withOpacity(0.5),
        backgroundColor,
      ];
    } else {
      return [
        backgroundColor,
        backgroundColor,
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = pokemon.color.toColor();
    final textColor = ThemeData.estimateBrightnessForColor(backgroundColor) ==
            Brightness.light
        ? Colors.black
        : Colors.white;

    return Hero(
        tag: pokemon.id,
        child: Card(
            key: Key('${pokemon.id}TileCard'),
            shape: shape,
            color: backgroundColor,
            child: ClipPath(
                clipper: ShapeBorderClipper(shape: shape),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: onTap,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: gradientList)),
                      child: SizedBox(
                        width: double.infinity,
                        height: height,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: _LeftArea(
                                  pokemon: pokemon,
                                  textColor: textColor,
                                )),
                                Flexible(
                                  child: PokemonImage(
                                      pokemon: pokemon,
                                      size: Size(height, height)),
                                )
                              ]),
                        ),
                      )),
                ))));
  }
}

class _LeftArea extends StatelessWidget {
  const _LeftArea(
      {Key? key, required this.pokemon, this.textColor = Colors.white})
      : super(key: key);

  final Pokemon pokemon;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '#${pokemon.id.toString().padLeft(4, '0')}',
        style: textTheme.subtitle1?.copyWith(color: textColor),
      ),
      Text(
        pokemon.name.toCapitalized(),
        style: textTheme.headline6?.copyWith(color: textColor),
      ),
      const Spacer(),
      PokemonTypesWrap(types: pokemon.types)
    ]);
  }
}
