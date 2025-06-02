import 'package:dio/dio.dart';
import 'package:doctors_doc/core/errors/error_model.dart';

class DioErrorHandel {
  static ErrorModel errorSelector(Response? response) {
    if (response == null) {
      return ErrorModel(message: "No Internet Connection");
    } else {
      if (response.statusCode! < 422) {
        return ErrorModel(message: "Error in Connection or data not found");
      } else if (response.statusCode == 422) {
        return ErrorModel(message: "You Send Invalid Data");
      } else if (response.statusCode == 429) {
        return ErrorModel(message: "Too Many Request Server Under Stress");
      } else if (response.statusCode! >= 500) {
        return ErrorModel(message: "Server Error we will fix it soon");
      } else {
        return ErrorModel(message: "UnExpected Error");
      }
    }
  }
}
