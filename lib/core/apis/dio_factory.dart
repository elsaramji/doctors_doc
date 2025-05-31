import 'dart:developer';

import 'package:dio/dio.dart';

class DioFactory {
  final Dio _dio;
  DioFactory(this._dio);
  Future<Response?> post({
    required String endpiont,
    required Object? data,
  }) async {
    try {
      return await _dio.post(endpiont, data: data);
    } on DioException catch (e) {
      return e.response;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
