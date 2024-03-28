import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:smart_app/features/cart/ui/cart_screen.dart';
import 'package:smart_app/features/home/data/models/product_model.dart';
import 'package:smart_app/features/home/ui/home_screen.dart';
import 'package:smart_app/features/profile/ui/profile_screen.dart';
import 'package:smart_app/features/search/ui/search_screen.dart';

import 'bottom_nav_states.dart';

class BottomNavCubit extends Cubit<BottomNavStates> {
  BottomNavCubit() : super(BottomNavInitialState());

  static BottomNavCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

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
      icon: Badge(
        label: Text('6'),
        child: Icon(IconlyLight.bag),
      ),
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

  List<ProductModel> get getProducts => ProductModel.products;

  ProductModel? findByProdId({required String id}) {
    if (getProducts.where((element) => element.productId == id).isEmpty) {
      return null;
    }
    emit(FindProductByIdState());
    return ProductModel.products
        .firstWhere((element) => element.productId == id);

  }
}
