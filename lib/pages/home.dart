import 'dart:ui';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_chrt/components/Navbar.dart';
import 'package:flutter_chrt/components/cardleder.dart';
import 'package:flutter_chrt/pages/favolist.dart';
import 'package:flutter_chrt/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List screens = [Screenhome(), Screencher(), Screenaddimg(), Screenprofile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.6),
        body: Container(
          child: screens.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomMenu(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}

class Screenhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Podcast();
  }
}

class Screencher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('favolist'));
  }
}

class Screenaddimg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return favolistpage();
  }
}

class Screenprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Profile();
  }
}
