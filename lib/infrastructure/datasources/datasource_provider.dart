import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';
import 'package:pokedex/infrastructure/datasources/pokeapi_datasource.dart';
import 'package:pokedex/infrastructure/service/http_service_provider.dart';

final datasourceProvider = Provider<IDatasource>(
    (ref) => PokeAPIDatasource(httpService: ref.watch(httpServiceProvider)));
