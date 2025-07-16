import 'package:dio/dio.dart';
import 'package:doctors_doc/core/errors/error_model.dart';

class DioErrorHandel {
  static Failuer errorSelector(Response? response) {
    if (response == null) {
      return Failuer(message: "No Internet Connection");
    } else {
      if (response.statusCode! < 422) {
        return Failuer(message: "Error in Connection or data not found");
      } else if (response.statusCode == 422) {
        return Failuer(message: "You Send Invalid Data");
      } else if (response.statusCode == 429) {
        return Failuer(message: "Too Many Request Server Under Stress");
      } else if (response.statusCode! >= 500) {
        return Failuer(message: "Server Error we will fix it soon");
      } else {
        return Failuer(message: "UnExpected Error");
      }
    }
  }
}
