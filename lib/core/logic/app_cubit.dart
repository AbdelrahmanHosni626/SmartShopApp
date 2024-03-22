import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_app/core/logic/app_states.dart';
import 'package:smart_app/features/cart/ui/cart_screen.dart';
import 'package:smart_app/features/home/ui/home_screen.dart';
import 'package:smart_app/features/profile/ui/profile_screen.dart';
import 'package:smart_app/features/search/ui/search_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 2;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.search),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.bag),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(
      icon: Icon(IconlyLight.profile),
      label: 'Profile',
    ),
  ];


  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBarState());
  }

  bool _isDark = false;

  bool get getIsDarkMode => _isDark;
  static const themeStatus = 'THEME_STATUS';

  Future<void> setDarkMode({required bool themeValue}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(themeStatus, themeValue);
    _isDark = themeValue;
    emit(ChangeAppModeState());
  }

  Future<bool> getThemeMode() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _isDark = pref.getBool(themeStatus) ?? false;
    emit(ChangeAppModeState());
    return _isDark;
  }
}
