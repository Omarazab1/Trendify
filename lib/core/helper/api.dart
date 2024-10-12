import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();

  Api() {
    // Optionally add default configuration, like base URL or headers.
    dio.options.baseUrl = 'https://your-api-base-url.com';
    dio.options.headers['Content-Type'] = 'application/json';
  }

  Future<dynamic> get({required String url, String? token}) async {
    try {
      Options options = Options(headers: {});
      if (token != null) {
        options.headers!['Authorization'] = 'Bearer $token';
      }

      Response response = await dio.get(url, options: options);
      return response.data;
    } on DioException catch (e) {
      throw Exception(
          'There was a problem with the request: ${e.response?.statusCode}, ${e.message}');
    }
  }

  Future<dynamic> post({required String url, required dynamic body, String? token}) async {
    try {
      Options options = Options(headers: {});
      if (token != null) {
        options.headers!['Authorization'] = 'Bearer $token';
      }

      Response response = await dio.post(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      throw Exception(
          'There was a problem with the request: ${e.response?.statusCode}, ${e.message}');
    }
  }

  Future<dynamic> put({required String url, required dynamic body, String? token}) async {
    try {
      Options options = Options(headers: {'Content-Type': 'application/x-www-form-urlencoded'});
      if (token != null) {
        options.headers!['Authorization'] = 'Bearer $token';
      }

      Response response = await dio.put(url, data: body, options: options);
      return response.data;
    } on DioException catch (e) {
      throw Exception(
          'There was a problem with the request: ${e.response?.statusCode}, ${e.message}');
    }
  }
}
