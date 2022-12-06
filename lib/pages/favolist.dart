import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chrt/global.dart';
import 'package:iconsax/iconsax.dart';

class favolistpage extends StatelessWidget {
  const favolistpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(slivers: [
      const SliverAppBar(
        pinned: true,
        expandedHeight: 60.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.add_circle_outline_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(
              Icons.chat_rounded,
              color: Colors.black,
            ),
          ),
        ],
        title: Center(
          child: Text(
            'Instagram ',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 190.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: podcast.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    new Stack(
                      children: [
                        Column(
                          children: [
                            new Container(
                                margin:
                                    new EdgeInsets.symmetric(vertical: 10.0),
                                alignment: FractionalOffset.centerLeft,
                                child: Container(
                                  width: 150,
                                  height: 100,
                                  color: Colors.amber,
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Text(
                                        'Instagram',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ))
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ]));
  }
}
