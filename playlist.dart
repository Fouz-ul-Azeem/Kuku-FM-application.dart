// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/audiobook.dart';
import 'package:flutter_application_1/homepage.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

List titleList = [
  "1.  introduction part 1 (12min)",
  "2.  introduction part 2 (24min)",
  "3.  How do i start Getting rich? (34min)",
  "4.  My job vs my buisness (15min)",
  "5.  Money is not real (45min)",
];

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: Icon(Icons.arrow_left_sharp),
        // ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 290),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 300,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          30,
                        ),
                      ),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 50,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: screenWidth / 12,
                    ),
                  ),
                  Positioned(
                    top: 25,
                    right: 10,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: screenWidth / 12,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    right: 20,
                    child: Text(
                      "Rich Dad And \n Poor Dad",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth / 17,
                      ),
                    ),
                  ),
                  // Text("ahgsfjd"),
                  // Positioned(
                  //   top: 20,
                  //   child: Text("ahgsfjd"),
                  // ),
                  // Text("ahgsfjd"),
                  // Text("675"),
                  // Text("21111gfhg"),

                  Row(
                    children: [
                      Container(
                        height: 190,
                        width: 150,
                        color: Colors.amber,
                        margin: EdgeInsets.only(
                          top: 80,
                          left: 60,
                        ),
                        child: Image.asset(
                          "lib/assets/1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TabBar(
                      indicatorColor: Colors.deepOrange,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(text: "Chapter"),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AudioBook(),
                                  ));
                            },
                            child: Tab(text: "Details")),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: screenWidth / 1.30,
              ),
              child: ListView.builder(
                itemCount: titleList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        //leading: Icon(Icons.label),
                        title: Text(
                          titleList[index],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: const Divider(
                          thickness: 0.2,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "add to search that",
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AudioBook(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Text(
                      "Play Now",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )

            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 20,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Text(
            //         "Chapters",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: screenWidth / 20,
            //         ),
            //       ),
            //       Text(
            //         "Details",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: screenWidth / 20,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Padding(
            // padding: const EdgeInsets.only(
            //   left: 80,
            // ),
            // child: Row(
            //   children: [
            //     SizedBox(
            //       width: 100,
            //       height: 3,
            //       child: DecoratedBox(
            //         decoration: BoxDecoration(
            //           color: Colors.deepOrange,
            //         ),
            //       ),
            //     ),
            //],
            //),
            //)
          ],
        ),
      ),
    );
  }
}
