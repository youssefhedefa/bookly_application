import 'package:dio/dio.dart';

class ApiService {
  static const _baseUrl = 'https://www.googleapis.com/books/v1/';
  static late final Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String endPoint,
  }) async {
    return await dio.get(endPoint);
  }




  // Future<Map<String, dynamic>> get({required String endPoint}) async {
  //   var response = await dio.get('$_baseUrl$endPoint');
  //   return response.data;
  // }
}