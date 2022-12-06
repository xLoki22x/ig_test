import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_chrt/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chrt/pages/home.dart';
import 'package:flutter_chrt/pages/profile.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Home();
              },
            ));
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          child: Column(
            children: [Container()],
          ),
        ),
      )
    ]));
  }
}
