// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:flutter_application_1/library.dart';
import 'package:flutter_application_1/playlist.dart';
import 'package:flutter_application_1/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// List circleimage = [
//   "lib/assets/png9.jpg",
//   "lib/assets/logo 2.png",
//   "lib/assets/kuku1.jpg",
//   "lib/assets/kuku2.jpg",
//   "lib/assets/kuku3.jpg"
// ];

List<AutherInfoModel> dataFromApi = [
  AutherInfoModel(image: "lib/assets/png9.jpg", name: "Fouz ul azeem"),
  AutherInfoModel(image: "lib/assets/logo 2.png", name: "Marzi"),
  AutherInfoModel(image: "lib/assets/kuku1.jpg", name: "Junaid"),
  AutherInfoModel(image: "lib/assets/kuku2.jpg", name: "Zoraiz"),
  AutherInfoModel(image: "lib/assets/kuku3.jpg", name: "fouz")
];

// List textList = ["Fouz ul azeem", "Marzi", "Junaid", "Zoraiz", "Junaid"];

List squareImageList = [
  "lib/assets/1.jpg",
  "lib/assets/2.jpg",
  "lib/assets/3.jpg",
];

List squareTextList = [
  "Rich Dad And \n Poor Dad",
  "The power of  your \n subconcious mind",
  "Ambedkar's india "
];

List square2ImageList = [
  "lib/assets/4.jpg",
  "lib/assets/5.jpg",
  "lib/assets/6.jpg"
];

List square2TextList = [
  "Nehru",
  "Sachin Tendulkar",
  "Ramanujan",
];

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  int _selectedIndex = 0;
// // Handler for when an item in the bottom navigation bar is tapped
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "lib/assets/png9.jpg",
                    fit: BoxFit.fill,
                    height: 60,
                    width: 55,
                  ),
                ),
              ),
            ),
            leadingWidth: screenWidth / 5,
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  SizedBox(
                    width: 230,
                    height: 44,
                    child: TextField(
                      //style: TextStyle(color: Colors.amber),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth / 25),
                              borderSide: BorderSide(width: 0.8)),
                          hintText: "search your books",
                          hintStyle: TextStyle(color: Colors.white54),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.white54,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            //
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: Icon(
                  Icons.rounded_corner_rounded,
                  color: Colors.white54,
                  size: screenWidth / 12,
                ),
              )
            ],
            //centerTitle: true,
          )),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        // onTap: _onItemTapped, // Tapping a new item updates the index
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Top Author",
                    style: TextStyle(
                        color: Colors.white, fontSize: screenWidth / 25),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "see all",
                      style: TextStyle(
                          color: Colors.deepOrange, fontSize: screenWidth / 25),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataFromApi.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(14),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(dataFromApi[index].image),
                              radius: screenWidth / 12,
                            ),
                          ),
                          Text(
                            dataFromApi[index].name,
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Text(
                    "Popular Books",
                    style: TextStyle(
                        color: Colors.white54, fontSize: screenWidth / 25),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "see all",
                      style: TextStyle(
                          color: Colors.deepOrange, fontSize: screenWidth / 25),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 250,
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
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const PlayList(),
                                      ));
                                },
                                child: Image.asset(
                                  squareImageList[index],
                                  fit: BoxFit.fill,
                                ),
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          color: Colors.white54, fontSize: screenWidth / 25),
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
                      builder: (context) => const LibraryPage(),
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
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      //  Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     color: Colors.black,
      //     child: row,

      //   ),
      //),

      // bottomNavigationBar: NavigationBar(
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   indicatorColor: Colors.amber,
      //   selectedIndex: currentPageIndex,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(child: Icon(Icons.notifications_sharp)),
      //       label: 'Notifications',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(
      //         label: Text('2'),
      //         child: Icon(Icons.messenger_sharp),
      //       ),
      //       label: 'Messages',
      //     ),
      //   ],
      // ),
    );
  }
}

class AutherInfoModel {
  final String image;
  final String name;
  dynamic asd;

  AutherInfoModel({
    this.asd,
    required this.image,
    required this.name,
  });
}
