import 'package:flutter/material.dart';
import 'package:week8/cores/assets_manager/assets_manager.dart';
import 'package:week8/screen/home_screen/home_screen.dart';
import 'package:week8/screen/market_screen/market_screen.dart';
import 'package:week8/screen/portfolio_screen/portfolio_screen.dart';
import 'package:week8/screen/profile_screen/profile_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// ignore: must_be_immutable
class HoneLayout extends StatefulWidget {
  const HoneLayout({super.key});

  @override
  State<HoneLayout> createState() => _HoneLayoutState();
}

class _HoneLayoutState extends State<HoneLayout> {
  final List <Widget>screens=[
    const HomeScreen(),
    const ProtfolioScreen(),
    const MarketScreen(),
    const ProfileScreen()
  ];
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[_bottomNavIndex],
         floatingActionButton: FloatingActionButton(
      onPressed:  (){},
       shape: const CircleBorder(),
       backgroundColor:const  Color(0xFFF37135),
        child: _bottomNavIndex==1? const Icon(Icons.add,color: Colors.white,): Image.asset(AssetsManager.arrow),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.rate_review,
            Icons.star_rate,
            Icons.contact_emergency,
          ],
          activeColor: const Color(0xFFF37135),
          inactiveColor: const Color(0xFF7D756C),
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
      ),
      ),
  
    );
  }
}