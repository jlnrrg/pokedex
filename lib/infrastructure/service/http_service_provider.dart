import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/infrastructure/service/dio_http_service.dart';

final httpServiceProvider = Provider((ref) {
  return DioHttpService();
});
