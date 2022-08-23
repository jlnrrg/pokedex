import 'package:dio/dio.dart';
import 'package:pokedex/infrastructure/core/http_exception.dart';
import 'package:pokedex/infrastructure/service/configs.dart';
import 'package:pokedex/infrastructure/service/i_http_service.dart';

class DioHttpService implements IHttpService {
  late final Dio dio;

  DioHttpService() {
    dio = Dio(baseOptions);
  }

  @override
  String get baseUrl => ServiceConfigs.apiBaseUrl;

  @override
  Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json'
  };

  BaseOptions get baseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );

  @override
  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response = await dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
    if (response.data == null || response.statusCode != 200) {
      throw HttpException(
        title: 'Http Error!',
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
    }

    return response.data;
  }

  @override
  Future<dynamic> post() async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future put() {
    // TODO: implement put
    throw UnimplementedError();
  }
}
