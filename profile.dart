// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

List iconList = [
  Icons.supervisor_account,
  Icons.account_circle,
  Icons.card_giftcard_sharp,
  Icons.diamond_sharp,
];
List textList = [
  "Invite Friends",
  "Account Settings",
  "Get Rewards",
  "Premium Settings",
];

class _ProfileState extends State<Profile> {
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
                  builder: (context) => const HomePage(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            size: screenWidth / 15,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth / 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(115, 52, 52, 52),
      ),
      body: Column(
        children: [
          Container(
            height: screenWidth / 1.25,
            width: screenWidth / 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(115, 52, 52, 52),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "lib/assets/png9.jpg",
                    ),
                    radius: screenWidth / 10,
                  ),
                ),
                Text(
                  "Fouz ul Azeem",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth / 19,
                  ),
                ),
                Text(
                  "@Kuku FM ",
                  style: TextStyle(
                    color: Colors.white38,
                  ),
                ),
                Text(
                  "Tap to edit profile ",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "200",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "130",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "40",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Plays",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Listen",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenWidth / 300,
                width: screenWidth / 2,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Container(
              height: screenWidth / 1.16,
              width: screenWidth / 1,
              decoration: BoxDecoration(
                color: Color.fromARGB(115, 52, 52, 52),
              ),
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: ListTile(
                      leading: Icon(
                        iconList[index],
                        color: Colors.white,
                        size: screenWidth / 10,
                      ),
                      title: Text(
                        textList[index],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "v2.3.3(1)",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Userid: 293390",
              ),
            ],
          )
        ],
      ),
    );
  }
}
