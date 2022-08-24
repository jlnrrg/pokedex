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
  ]);

  //! must be written lowerkey
  static const String routeNameOverview = 'overview';
  static const String routePathOverview = '/';
  static const String routeNamePokemon = 'pokemon';
  static const String routePathPokemon = '/pokemon/:n';
}
