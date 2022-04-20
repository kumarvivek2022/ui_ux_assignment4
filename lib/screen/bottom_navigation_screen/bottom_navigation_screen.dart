import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/screen/account_screen/account_screen.dart';
import 'package:ui_ux_assignment4/screen/cart_screen/cart_screen.dart';
import 'package:ui_ux_assignment4/screen/explore_screen//explore_screen.dart';
import 'package:ui_ux_assignment4/screen/favourite_screen/favourite_screen.dart';
import 'package:ui_ux_assignment4/screen/shop_screen//shop_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int index = 0;

  final screens = const [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.white,
            height: 55,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.shop),
                  label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Icons.explore),
                  label: 'Explore'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_outline),
                  label: 'Favourites'),
              NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  label: 'My Profile'),
            ]
        ),
        body: screens[index]
    );
  }
}