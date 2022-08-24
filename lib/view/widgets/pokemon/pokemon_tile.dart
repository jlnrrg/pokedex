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

  double get height => 100;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: shape,
        color: pokemon.color.toColor(),
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
                    colors: pokemon.types
                        .map((e) => e.toColor().withOpacity(0.5))
                        .toList(),
                  )),
                  child: SizedBox(
                    width: double.infinity,
                    height: height,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: _LeftArea(pokemon: pokemon)),
                            Flexible(
                              child: PokemonImage(
                                  pokemon: pokemon, size: Size(height, height)),
                            )
                          ]),
                    ),
                  )),
            )));
  }
}

class _LeftArea extends StatelessWidget {
  const _LeftArea({Key? key, required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '#${pokemon.id.toString().padLeft(4, '0')}',
        style: textTheme.subtitle1?.copyWith(color: Colors.white),
      ),
      Text(
        pokemon.name.toCapitalized(),
        style: textTheme.headline6?.copyWith(color: Colors.white),
      ),
      const Spacer(),
      PokemonTypesWrap(types: pokemon.types)
    ]);
  }
}
