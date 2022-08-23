import 'package:mocktail/mocktail.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';
import 'package:pokedex/infrastructure/service/i_http_service.dart';

class MockHttpService extends Mock implements IHttpService {}

class MockDatasource extends Mock implements IDatasource {}
