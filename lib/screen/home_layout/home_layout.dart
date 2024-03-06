import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week8/cores/assets_manager/assets_manager.dart';
import 'package:week8/provider/provider.dart';
import 'package:week8/screen/home_screen/home_screen.dart';
import 'package:week8/screen/market_screen/market_screen.dart';
import 'package:week8/screen/portfolio_screen/portfolio_screen.dart';
import 'package:week8/screen/profile_screen/profile_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeLayout extends StatelessWidget {
   HomeLayout({super.key});

  final List <Widget>screens=[
    const HomeScreen(),
    const ProtfolioScreen(),
    const MarketScreen(),
    const ProfileScreen()
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[Provider.of<ControllProvider>(context).currentIndex],
         floatingActionButton: FloatingActionButton(
      onPressed:  (){},
       shape: const CircleBorder(),
       backgroundColor:const  Color(0xFFF37135),
        child: Provider.of<ControllProvider>(context).currentIndex==1? const Icon(Icons.add,color: Colors.white,): Image.asset(AssetsManager.arrow),

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
          activeIndex: Provider.of<ControllProvider>(context).currentIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index){
            Provider.of<ControllProvider>(context,listen: false).change(index);
             Provider.of<ControllProvider>(context,listen: false).loadContacts();

          },
          //other params
      ),
      );
  }
}