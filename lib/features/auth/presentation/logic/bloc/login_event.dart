part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}


class UserNameEmailChanged extends LoginEvent {
  final String userNameEmail; 
  const UserNameEmailChanged({required this.userNameEmail});
}

class PasswordChanged extends LoginEvent {
  final String password;

  const PasswordChanged({required this.password});
}

class ChangePasswordVisibility extends LoginEvent {}