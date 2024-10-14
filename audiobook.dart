// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/playlist.dart';

class AudioBook extends StatefulWidget {
  const AudioBook({super.key});

  @override
  State<AudioBook> createState() => _AudioBookState();
}

List textList = [
  "1.  introduction part 1                      (12min)",
  "2.  introduction part 2                      (24min)",
  "3.  How do i start Getting rich?        (34min)",
  "4.  My job vs my buisness                (15min)",
  "5.  Money is not real                       (45min)",
];

class _AudioBookState extends State<AudioBook> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   leading: Icon(
      //     Icons.arrow_back,
      //     size: screenwidth / 18,
      //     color: Colors.white,
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(
      //         right: 30,
      //       ),
      //       child: SizedBox(
      //         width: 64,
      //         height: 50,
      //         child: Image.asset(
      //           "lib/assets/png9.jpg",
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlayList(),
                        ));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: screenwidth / 15,
                    color: Colors.white,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: 60,
                  height: 40,
                  child: Image.asset(
                    "lib/assets/png9.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 70,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.amber,
                      ),
                      width: 240,
                      height: 280,
                      child: Image.asset(
                        "lib/assets/1.jpg",
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 40,
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Introduction part 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenwidth / 22,
                      ),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      "By robart kiyasoki",
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.heart_broken,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              //yaha se beech me audio bar ayye ga,

              ListView.builder(
                itemCount: textList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(textList[index]),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
