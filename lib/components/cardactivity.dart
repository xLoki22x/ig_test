import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_chrt/global.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView.builder(
          itemCount: podcast2.length,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 600,
              child: Card(),
            );
          },
        ));
  }
}
