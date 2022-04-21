import 'package:eshop_food_app/widgets/carrousel_products.dart';
import 'package:eshop_food_app/widgets/popular_carrousel_products.dart';
import 'package:eshop_food_app/widgets/popular_section.dart';
import 'package:flutter/material.dart';
import '../models/user_data.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatelessWidget {
  FoodScreen({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final loadedUsers = Provider.of<UserData>(context);

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0 ? const Icon(Icons.home, color: Colors.black,) : const Icon(Icons.home_filled, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1 ? const Icon(Icons.shopping_bag, color: Colors.black) : const Icon(Icons.shopping_bag_outlined, color: Colors.black),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2 ? const Icon(Icons.shopping_cart, color: Colors.black) : const Icon(Icons.shopping_cart_outlined, color: Colors.black),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3 ? const Icon(Icons.person_rounded, color: Colors.black) : const Icon(Icons.person_rounded, color: Colors.black),
              label: 'Settings',
            ),
          ]
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // not necessary to add crossAxisAlignment.
                      // pas nécessaire d'ajouter le crossAxisAlignment.
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bonjour ${loadedUsers.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text(loadedUsers.job, style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
              CarrouselProducts(),
              PopularSection(),
              PopularCarrouselProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
