part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupError extends SignupState {
  final Failuer errorModel;
  SignupError(this.errorModel);
}

final class SignupSuccess extends SignupState {
  final ResponsEnitty responsEnitty;
  SignupSuccess(this.responsEnitty);
}
