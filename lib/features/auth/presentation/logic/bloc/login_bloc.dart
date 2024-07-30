
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
   on<ChangePasswordVisibility>(_onChangePasswordVisibility);
   on<UserNameEmailChanged>(_onUserNameEmailChanged);
   on<PasswordChanged>(_onPasswordChanged);
   
  }

  FutureOr<void> _onChangePasswordVisibility(ChangePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(passwordVisible: !state.passwordVisible));
 
  }

  FutureOr<void> _onUserNameEmailChanged(UserNameEmailChanged event, Emitter<LoginState> emit) {
  
    emit(state.copyWith(username: event.userNameEmail));
  }

  FutureOr<void> _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
 
    emit(state.copyWith(password: event.password));
  }
}
