import 'package:dio/dio.dart';
import 'package:doctors_doc/core/apis/dio_factory.dart';
import 'package:doctors_doc/core/const/const_api_values.dart';
import 'package:get_it/get_it.dart';
GetIt getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<Dio>(
     Dio(
      BaseOptions(
        baseUrl: ConstApiValues.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'Accept': 'application/json'},
      ),
    ),
  );

  getIt.registerSingleton<DioFactory>(DioFactory(getIt<Dio>()));
}
