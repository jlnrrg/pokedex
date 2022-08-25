import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/core/config.dart';
import 'package:pokedex/view/core/extensions/string_extension.dart';
import 'package:pokedex/view/router/router.dart';
import 'package:pokedex/view/widgets/common/ledge_button.dart';
import 'package:pokedex/view/widgets/pokemon/pokemon_image.dart';
import 'package:pokedex/view/widgets/pokemon/sections/description_section.dart';
import 'package:pokedex/view/widgets/pokemon/sections/numeric_info_section.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({Key? key, required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  ShapeBorder get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      );

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
    return Hero(
        tag: pokemon.id,
        child: Card(
          shape: shape,
          color: pokemon.color.toColor(),
          child: ClipPath(
              clipper: ShapeBorderClipper(shape: shape),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: gradientList)),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 460, maxWidth: 300),
                  child: Stack(children: [
                    if (pokemon.id > Config.firstPokemonId)
                      Align(
                        alignment: const Alignment(-1, -0.25),
                        child: LedgeButton(
                            onPressed: () => GoRouter.of(context).replaceNamed(
                                MyRouter.routeNamePokemonLeftTransition,
                                params: {'n': (pokemon.id - 1).toString()}),
                            elevation: 20,
                            color: Colors.white,
                            stickDirection: StickDirection.left,
                            icon: Icon(
                              Icons.arrow_back,
                              color: pokemon.color.toColor(),
                            )),
                      ),
                    if (pokemon.id < Config.lastPokemonId)
                      Align(
                        alignment: const Alignment(1, -0.25),
                        child: LedgeButton(
                            onPressed: () => GoRouter.of(context).replaceNamed(
                                MyRouter.routeNamePokemonRightTransition,
                                params: {'n': (pokemon.id + 1).toString()}),
                            elevation: 20,
                            color: Colors.white,
                            stickDirection: StickDirection.right,
                            icon: Icon(
                              Icons.arrow_forward,
                              color: pokemon.color.toColor(),
                            )),
                      ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
                      child: _CardContent(pokemon: pokemon),
                    )
                  ]),
                ),
              )),
        ));
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({Key? key, required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          dividerColor: Colors.white.withOpacity(0.5),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: Column(
          children: [
            _CardHeader(
              name: pokemon.name,
              number: pokemon.id,
            ),
            PokemonImage(
              pokemon: pokemon,
              size: const Size(200, 200),
            ),
            DescriptionSection(
              child: AutoSizeText(
                pokemon.description.replaceAll('\n', ' '),
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
            NumericInfoSection(
              types: pokemon.types,
              height: pokemon.height,
              weight: pokemon.weight,
            )
          ],
        ),
      ),
    );
  }
}

class _CardHeader extends StatelessWidget {
  const _CardHeader({Key? key, required this.name, required this.number})
      : super(key: key);

  final String name;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButton(),
        Column(
          children: [
            Text(
              name.toCapitalized(),
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '#${number.toString().padLeft(4, '0')}',
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        const IconButton(
            onPressed: null, icon: Icon(null)), //? placeholder for alignments
      ],
    );
  }
}
