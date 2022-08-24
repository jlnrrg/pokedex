import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon_types.dart';

class NumericInfoSection extends StatelessWidget {
  const NumericInfoSection(
      {Key? key,
      required this.types,
      required this.weight,
      required this.height})
      : super(key: key);

  final List<PokemonTypes> types;
  final int weight;
  final int height;

  Color get textColor => Colors.white;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                      children: types
                          .map((e) =>
                              Text(e.toString(), style: textTheme.headline6))
                          .toList()),
                )),
                Text('type', style: textTheme.bodySmall),
              ],
            ),
            const VerticalDivider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: '$weight', style: textTheme.headline6),
                    TextSpan(text: 'kg', style: textTheme.bodySmall)
                  ])),
                ),
                Text('weight', style: textTheme.bodySmall),
              ],
            ),
            const VerticalDivider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: '$height', style: textTheme.headline6),
                    TextSpan(text: 'm', style: textTheme.bodySmall)
                  ])),
                ),
                Text('height', style: textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
