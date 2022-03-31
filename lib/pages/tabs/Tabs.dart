import 'package:flutter/material.dart';
import 'Cart.dart';
import 'Category.dart';
import 'Home.dart';
import 'User.dart';


class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;

  final List _pageList = [
    const HomePage(),
    CategoryPage(),
    const CartPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pinkAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "购物车"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "我的"
          ),
        ],
      ),
    );
  }
}
