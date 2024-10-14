// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/fouz.png",
            width: 390,
            height: 780,
            fit: BoxFit.fill,
            color: const Color.fromARGB(255, 103, 102, 102),
            colorBlendMode: BlendMode.modulate,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 3,
              ),
              Image.asset(
                "lib/assets/logo 2.png",
                // height: 130,
                width: 180,
                color: Colors.deepOrange,
                colorBlendMode: BlendMode.modulate,
              ),
              Text("listen to what you love",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              Text(
                "Login for personalised listening ",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 229, 23, 23),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.crop_square,
                                color: Colors.white,
                              ),
                              Text("Continue via phone",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
              Text(
                "by continue you will accept our T&C and privacy policy",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          )),
        ],
      ),
    );
  }
}
