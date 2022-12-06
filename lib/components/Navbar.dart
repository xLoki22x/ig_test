import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_circle_outlined),
          label: 'Profile',
        )
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.purple[400],
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.black,
    );
  }
}
