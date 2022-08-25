import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/view/pages/overview_page.dart';
import 'package:pokedex/view/pages/pokemon_page.dart';

class MyRouter {
  final router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      path: routePathOverview,
      name: routeNameOverview,
      builder: (context, state) => const OverviewPage(),
    ),
    GoRoute(
        path: routePathPokemon,
        name: routeNamePokemon,
        builder: (context, state) {
          final v = state.params['n'] ?? '';
          return PokemonPage(identifier: v);
        }),
    GoRoute(
      path: routePathPokemonLeftTransition,
      name: routeNamePokemonLeftTransition,
      pageBuilder: (context, state) {
        final v = state.params['n'] ?? '';
        return CustomTransitionPage(
          key: state.pageKey,
          child: PokemonPage(identifier: v),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          ),
        );
      },
    ),
    GoRoute(
      path: routePathPokemonRightTransition,
      name: routeNamePokemonRightTransition,
      pageBuilder: (context, state) {
        final v = state.params['n'] ?? '';
        return CustomTransitionPage(
          key: state.pageKey,
          child: PokemonPage(identifier: v),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child,
          ),
        );
      },
    )
  ]);

  //! must be written lowerkey
  static const String routeNameOverview = 'overview';
  static const String routePathOverview = '/';
  static const String routeNamePokemon = 'pokemon';
  static const String routePathPokemon = '/pokemon/:n';
  static const String routeNamePokemonLeftTransition = 'pokemonLeftTransition';
  static const String routePathPokemonLeftTransition =
      '/pokemonLeftTransition/:n';
  static const String routeNamePokemonRightTransition =
      'pokemonRightTransition';
  static const String routePathPokemonRightTransition =
      '/pokemonRightTransition/:n';
}
