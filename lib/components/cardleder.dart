import 'package:flutter_chrt/global.dart';
import 'package:flutter/material.dart';

class Podcast extends StatefulWidget {
  const Podcast({Key? key}) : super(key: key);

  @override
  _PodcastState createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("./../../../images/5376222.jpg"),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 60.0,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Icon(
                  Icons.chat_rounded,
                  color: Colors.black,
                ),
              ),
            ],
            title: Text(
              'Instagram ',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
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
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.red),
                                      borderRadius: BorderRadius.circular(50)),
                                  margin:
                                      new EdgeInsets.symmetric(vertical: 10.0),
                                  alignment: FractionalOffset.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: new Image(
                                        image: new AssetImage(
                                            "./../../../images/sixnine.jpg"),
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Instagram ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100),
                                )
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
          SliverFixedExtentList(
            itemExtent: 600.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  child: Card(
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20.0),
                    // ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(20.0),
                              // color: Colors.grey.withOpacity(0.3),
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: [
                              //     Color.fromARGB(255, 255, 11, 43),
                              //     Color.fromARGB(255, 250, 4, 250),
                              //     Color.fromARGB(255, 23, 96, 255),
                              //   ],
                              // ),
                              ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image(
                                    image: new AssetImage(
                                        "../../images/sixnine.jpg"),
                                    height: 30.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Text('Podcast POP',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13)),
                                  ),
                                  Container(
                                    child: Text(
                                      'poppular',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 10,
                                          color: Colors.grey),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              image: new AssetImage("../../images/sixnine.jpg"),
                              height: 52.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Text('224')
                                  ],
                                ),
                              )),
                              Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [Icon(Icons.comment), Text('85')],
                                ),
                              )),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.data_saver_on_sharp),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 600,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Adam Lookcy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'So fun it is',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 13,
                                          color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Noom ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  ' is so sun',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 13,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: podcast2.length, // 1000 list items
            ),
          ),
        ],
      ),
    );
  }
}
