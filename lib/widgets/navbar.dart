import 'package:flutter/material.dart';
import '../views/favorites_page.dart';
import '../views/home_page.dart'; 

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final BuildContext navigationContext;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.navigationContext,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Theme.of(context).colorScheme.secondary,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      selectedIndex: currentIndex,
      onDestinationSelected: (int index) {
        if (index == 0) {
          Navigator.pushReplacement(
            navigationContext,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        } else if (index == 1) {
          Navigator.pushReplacement(
            navigationContext,
            MaterialPageRoute(builder: (context) => const FavoritesPage()),
          );
        }
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home, color: Colors.deepOrange),
          label: 'Inicio',
        ),
        NavigationDestination(
          icon: Icon(Icons.favorite_border),
          selectedIcon: Icon(Icons.favorite, color: Colors.deepOrange),
          label: 'Favoritos',
        ),
      ],
    );
  }
}
