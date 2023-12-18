import 'package:flutter/material.dart';

import 'package:tradelink/hex_converter.dart';
import 'package:tradelink/screens/bottomNav/account_management.dart';

import 'package:tradelink/screens/bottomNav/cart.dart';
import 'package:tradelink/screens/bottomNav/home.dart';
import 'package:tradelink/screens/bottomNav/menu.dart';
import 'package:tradelink/screens/bottomNav/messages.dart';
import 'package:tradelink/screens/bottomNav/profile.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  final screens=[
    Home(),
    // const Profile(),
    AccountManagement(),
    const Cart(),
    const Messages(),
    const Menu(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: convert_hex('#F5F5F5'),

      body:screens[selectedIndex],

      // bottomNavigationBar: ,
      bottomNavigationBar: NavigationBar(

        selectedIndex: selectedIndex,
        onDestinationSelected: (int index){
          setState(() {
            selectedIndex=index;
          });
        },


        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'home',selectedIcon: Icon(Icons.home_outlined),),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'profile',selectedIcon: Icon(Icons.person_outline),),
          NavigationDestination(icon: Icon(Icons.shopping_cart_checkout_outlined), label: 'cart',selectedIcon: Icon(Icons.shopping_cart_checkout_outlined),),
          NavigationDestination(icon: Icon(Icons.message_outlined), label: 'messages',selectedIcon: Icon(Icons.message_outlined),),
          NavigationDestination(icon: Icon(Icons.menu_outlined), label: 'menu',selectedIcon: Icon(Icons.menu_outlined),),

        ],
      ),

    );
  }
}




