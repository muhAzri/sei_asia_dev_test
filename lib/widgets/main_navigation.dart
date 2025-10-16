import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/assets.dart';

class MainNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainNavigation({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navHome,
              width: 24,
              height: 24,
              color: navigationShell.currentIndex == 0
                  ? Colors.green
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navMall,
              width: 24,
              height: 24,
              color: navigationShell.currentIndex == 1
                  ? Colors.green
                  : Colors.grey,
            ),
            label: 'Mall',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navDiscover,
              width: 24,
              height: 24,
              color: navigationShell.currentIndex == 2
                  ? Colors.green
                  : Colors.grey,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navInbox,
              width: 24,
              height: 24,
              color: navigationShell.currentIndex == 3
                  ? Colors.green
                  : Colors.grey,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navAccount,
              width: 24,
              height: 24,
              color: navigationShell.currentIndex == 4
                  ? Colors.green
                  : Colors.grey,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
