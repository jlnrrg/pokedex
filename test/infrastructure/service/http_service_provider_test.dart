import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/infrastructure/service/dio_http_service.dart';
import 'package:pokedex/infrastructure/service/http_service_provider.dart';

void main() {
  test(
      'Given httpServiceProvider, When created, Then is of type DioHttpService',
      () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(httpServiceProvider),
      isA<DioHttpService>(),
    );
  });
}
