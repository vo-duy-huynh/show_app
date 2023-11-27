import 'package:flutter/material.dart';
import 'package:shop_app/views/nav_screens/account_screen.dart';
import 'package:shop_app/views/nav_screens/cart_screen.dart';
import 'package:shop_app/views/nav_screens/category_screen.dart';
import 'package:shop_app/views/nav_screens/home_screen.dart';
import 'package:shop_app/views/nav_screens/search_screen.dart';
import 'package:shop_app/views/nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  List<Widget> _page = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 231, 87, 10),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'CATEGORIES',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'STORE',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'CART',
            ),
            // search
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'ACCOUNT',
            ),
          ]),
      body: _page[_pageIndex],
    );
  }
}
