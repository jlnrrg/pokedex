import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({
    Key? key,
    required this.identifier,
  }) : super(key: key);

  final String identifier;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('PokemonPage')),
    );
  }
}
