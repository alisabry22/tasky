import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_state.dart';
class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(navIndex: 0));
  void onBottomNavChange(int index){
    emit(state.copyWith(navIndex: index));
  }
}