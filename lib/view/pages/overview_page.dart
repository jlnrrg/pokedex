import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/router/router.dart';
import 'package:pokedex/view/states/pokemon/pokemon_loader.dart';
import 'package:pokedex/view/widgets/pokemon/pokemon_tile.dart';

class OverviewPage extends ConsumerStatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends ConsumerState<OverviewPage> {
  static const _pageSize = 10;
  int pageKey = 0;

  //? the initialScrollOffset does not work here, as the data has to be fetched first to create enough scrolling area
  final _scrollController = ScrollController();

  final PagingController<int, Pokemon> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetch();
    });

    super.initState();
  }

  void reset() {
    _pagingController.refresh();
  }

  Future<void> _fetch() async {
    await ref
        .read(pokemonLoaderProvider.notifier)
        .fetchedNext(_pageSize, pageKey);
    final state = ref.read(pokemonLoaderProvider);
    if (state.hasValue) {
      final listSize = (state.value?.length ?? 0);
      final nextPageKey = pageKey + listSize;
      if (listSize < _pageSize) {
        _pagingController.appendLastPage(state.value ?? []);
      } else {
        _pagingController.appendPage(state.value ?? [], nextPageKey);
        pageKey = nextPageKey;
      }
    } else if (state.hasError) {
      _pagingController.error = state.error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: RefreshIndicator(
                onRefresh: () => Future.sync(() => reset()),
                child:
                    CustomScrollView(controller: _scrollController, slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: PagedSliverList.separated(
                      pagingController: _pagingController,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 8,
                      ),
                      builderDelegate: PagedChildBuilderDelegate<Pokemon>(
                        itemBuilder: (context, item, index) => PokemonTile(
                          key: ValueKey(index),
                          pokemon: item,
                          onTap: () => GoRouter.of(context).pushNamed(
                              MyRouter.routeNamePokemon,
                              params: {'n': item.id.toString()}),
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
