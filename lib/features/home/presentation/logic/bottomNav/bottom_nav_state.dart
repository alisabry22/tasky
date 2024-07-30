

part of 'bottom_nav_cubit.dart';


class BottomNavState extends Equatable{
  final int navIndex;
  const BottomNavState({this.navIndex=0});

 BottomNavState copyWith ({int? navIndex}){
    return BottomNavState(navIndex: navIndex??this.navIndex);
  }

  @override

  List<Object?> get props => [navIndex];
}