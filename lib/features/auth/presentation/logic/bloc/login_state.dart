part of 'login_bloc.dart';

 class LoginState extends Equatable {
  final String? username;
  final String? password;
  final bool passwordVisible;
  const LoginState({
     this.username,
     this.password,
     this.passwordVisible=false,
  });

  LoginState copyWith({
    String? username,
    String? password,
    bool? passwordVisible,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      passwordVisible: passwordVisible ?? this.passwordVisible,
    );
  }
  
  @override
  List<Object?> get props => [
    username,
    password,
    passwordVisible
  ];
}


