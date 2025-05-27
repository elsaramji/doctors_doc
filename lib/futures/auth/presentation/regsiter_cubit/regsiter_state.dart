part of 'regsiter_cubit.dart';

@immutable
sealed class RegsiterState {}

final class RegsiterInitial extends RegsiterState {}

final class RegsiterLoading extends RegsiterState {}

final class RegsiterSuccess extends RegsiterState {
  final String token;
  RegsiterSuccess(this.token);
}

final class RegsiterFailure extends RegsiterState {
  final AuthError error;
  RegsiterFailure(this.error);
}
