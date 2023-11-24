import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/favorite/favorite.dart';
import 'package:flutter_application_1/home/homemain.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Widget> listwidget = [homePageCST(), favoritePage()];

  int indexCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listwidget[indexCount],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
              rippleColor: Colors.grey,
              //duration: Duration(seconds: 900),
              gap: 15,
              //backgroundColor: Colors.black,
              //activeColor: Colors.white,
              tabBackgroundColor: Colors.white54,
              //tabBackgroundGradient: LinearGradient(colors: Colors.primaries),
              tabBorderRadius: 35,
              tabActiveBorder: Border.all(width: 1.5, color: Colors.grey),
              curve: Curves.easeOutCubic,
              onTabChange: (value) {
                setState(() {
                  indexCount = value;
                });
              },
              padding: const EdgeInsets.all(15),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'home',
                  textColor: Colors.grey[850],
                  //iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: 'Favorite',
                  textColor: Colors.grey[850],
                  //iconColor: Colors.white,
                ),
                GButton(
                  icon: Icons.payment_outlined,
                  text: 'Payment',
                  //iconColor: Colors.white,
                  textColor: Colors.grey[850],
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Setting',
                  // iconColor: Colors.white,
                  textColor: Colors.grey[850],
                ),
              ]),
        ),
      ),
    );
  }
}
