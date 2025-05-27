import 'package:bloc/bloc.dart';
import 'package:doctors_doc/futures/auth/data/reister_api_imp.dart';
import 'package:doctors_doc/futures/auth/domain/errors/errors.dart';
import 'package:meta/meta.dart';

part 'regsiter_state.dart';

class RegsiterCubit extends Cubit<RegsiterState> {
  RegsiterCubit() : super(RegsiterInitial());

  /// Registers a user with the provided email, password, and phone number.
  /// Emits [RegsiterLoading] while the registration is in progress.
  /// On success, emits [RegsiterSuccess] with the authentication token.
  /// On failure, emits [RegsiterFailure] with the error details.
  Future<void> register(String email, String password, String phone) async {
    emit(RegsiterLoading());
    await Future.delayed(const Duration(seconds: 1));
    final registerApi = RegisterApiImpl();
    final result = await registerApi.register(email, password, phone);
    result.fold(
      (error) => emit(RegsiterFailure(error)),
      (token) => emit(RegsiterSuccess(token)),
    );
  }
}
