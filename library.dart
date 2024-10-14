// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

List squareImageList = [
  "lib/assets/1.jpg",
  "lib/assets/7.jpeg",
  "lib/assets/3.jpg",
];

List squareTextList = [
  "Rich Dad And \n Poor Dad",
  "Sunil chetri",
  "Ambedkar's india "
];

List square2ImageList = [
  "lib/assets/3.jpg",
  "lib/assets/8.jpeg",
  "lib/assets/1.jpg"
];

List square2TextList = [
  "Ambedkar's india",
  "The Bhagat singh",
  "Rich Dad And \n Poor Dad",
];
List square3ImageList = [
  "lib/assets/6.jpg",
  "lib/assets/1.jpg",
  "lib/assets/5.jpg"
];

List square3TextList = [
  "Ramanugan",
  "Rich Dad And \n Poor Dad",
  "sachin tendulkar"
];

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "My Library",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: screenWidth / 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Recently Played",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth / 25,
                          fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        "see all",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: screenWidth / 25),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 350,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: SizedBox(
                                  height: 180,
                                  width: 130,
                                  child: Image.asset(
                                    squareImageList[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                squareTextList[index],
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: screenWidth / 37),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Saved for later",
                      style: TextStyle(
                          color: Colors.white70, fontSize: screenWidth / 25),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "see all",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: screenWidth / 25),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 350,
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: SizedBox(
                                  height: 180,
                                  width: 130,
                                  child: Image.asset(
                                    square2ImageList[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                square2TextList[index],
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: screenWidth / 37),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Downloads",
                      style: TextStyle(
                          color: Colors.white70, fontSize: screenWidth / 25),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "see all",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: screenWidth / 25),
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 350,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(13),
                                  child: SizedBox(
                                    height: 180,
                                    width: 130,
                                    child: Image.asset(
                                      square3ImageList[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  square3TextList[index],
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: screenWidth / 37),
                                )
                              ],
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
