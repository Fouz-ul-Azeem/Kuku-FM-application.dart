// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/library.dart';
import 'package:flutter_application_1/login_page.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<IconData> kiList = [
  Icons.language,
  Icons.graphic_eq,
  Icons.replay,
  Icons.library_add,
  Icons.star_outline_outlined,
  Icons.call_rounded,
  Icons.article,
  Icons.post_add,
];
List nameList = [
  "Audio language",
  "Audio Quality",
  "Restore Purchased(subscription)",
  "Data Saver Mode",
  "Review Us",
  "Contact Us",
  "Terms and Condition",
  "Privacy Policy",
];
// List<IconData> iconList = [
//   Icons.arrow_forward_ios,
//   Icons.arrow_forward_ios,
//];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LibraryPage(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white70,
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.white70,
            fontSize: screenWidth / 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              ListView.builder(
                itemCount: kiList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        kiList[index],
                        color: Colors.white,
                        size: screenWidth / 13,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        nameList[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),

                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white70,
                      size: screenWidth / 30,
                    ),
                    // trailing: Icon(
                    //   iconList[index],
                    //   color: Colors.white,
                    // ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 30,
                    ),
                    height: screenWidth / 10,
                    width: screenWidth / 3,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: screenWidth / 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "v 2.3(1)",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Userid: 223396",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
