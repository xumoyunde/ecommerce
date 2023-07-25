import 'package:ecommerce/controller/dashboard_controller.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeScreen(),
              Text('Hello world'),
              Text('Hello world cart')
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          selectedLabelStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.updateIndex(value);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Image.asset(
                controller.tabIndex == 0
                    ? 'assets/icons/bottom_navigation_bar_icons/home_with_background.png'
                    : 'assets/icons/bottom_navigation_bar_icons/home.png',
                width: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Image.asset(
                controller.tabIndex == 1
                    ? 'assets/icons/bottom_navigation_bar_icons/cart_with_background.png'
                    : 'assets/icons/bottom_navigation_bar_icons/cart.png',
                width: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Image.asset(
                controller.tabIndex == 2
                    ? 'assets/icons/bottom_navigation_bar_icons/orders_with_background.png'
                    : 'assets/icons/bottom_navigation_bar_icons/orders.png',
                width: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Wallet',
              icon: Image.asset(
                controller.tabIndex == 3
                    ? 'assets/icons/bottom_navigation_bar_icons/wallet_with_background.png'
                    : 'assets/icons/bottom_navigation_bar_icons/wallet.png',
                width: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Image.asset(
                controller.tabIndex == 4
                    ? 'assets/icons/bottom_navigation_bar_icons/profile_with_background.png'
                    : 'assets/icons/bottom_navigation_bar_icons/profile.png',
                width: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// SizedBox(
// height: 80,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// BottomBarItem(
// onTap: (){},
// image: 'assets/icons/bottom_navigation_bar_icons/home_with_background.png',
// title: "Home",
// ),
// // Image.asset('assets/icons/bottom_navigation_bar_icons/home_with_background.png', fit: BoxFit.cover, width: 32,),
// // Image.asset('assets/icons/bottom_navigation_bar_icons/cart.png', fit: BoxFit.cover, width: 32, color: Colors.black54,),
// // Image.asset('assets/icons/bottom_navigation_bar_icons/orders.png', fit: BoxFit.cover, width: 32, color: Colors.black54,),
// // Image.asset('assets/icons/bottom_navigation_bar_icons/wallet.png', fit: BoxFit.cover, width: 32, color: Colors.black54,),
// // Image.asset('assets/icons/bottom_navigation_bar_icons/profile.png', fit: BoxFit.cover, width: 32, color: Colors.black54,),
// ],
// ),
// ),
