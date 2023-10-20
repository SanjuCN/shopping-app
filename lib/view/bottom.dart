import 'package:flutter/material.dart';
import 'package:shoppingapp/view/cart.dart';
import 'package:shoppingapp/view/home.dart';

import 'package:shoppingapp/view/saved.dart';

class bottom_bar extends StatefulWidget {
  // final int itemIndex;
  const bottom_bar({
    super.key,
  });

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      home(),
      Saved(),
      Cart(),
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: "Cart"),
          ]),
    );
  }
}
