abstract class IHttpService {
  String get baseUrl;

  Map<String, String> get headers;

  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> post();

  Future<dynamic> put();

  Future<dynamic> delete();
}
