import 'dart:math';

import 'package:applewatch_store/routes/pageOne.dart';
import 'package:applewatch_store/routes/pageThree.dart';
import 'package:applewatch_store/routes/pageTwo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelectedCategoryWatch = true;
  bool isSelectedCategoryMacbooks = false;
  bool isSelectedCategoryiPhones = false;
  int selectedPAge = 0;
  List<Widget> myRoutes = const [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 25 / 100,
                height: height,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 58.0),
                      child: Image.asset("assets/logos_apple.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 158.0),
                      child: Transform.rotate(
                        angle: -pi / 2,
                        child: GestureDetector(
                          onTap: () => setState(() {
                            isSelectedCategoryiPhones = false;
                            isSelectedCategoryWatch = true;
                            isSelectedCategoryMacbooks = false;
                            selectedPAge = 0;
                          }),
                          child: Column(
                            children: [
                              Text(
                                "Watches",
                                style: TextStyle(
                                  color: isSelectedCategoryWatch
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                height: 3,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: isSelectedCategoryWatch
                                      ? Colors.white
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Transform.rotate(
                        angle: -pi / 2,
                        child: GestureDetector(
                          onTap: () => setState(() {
                            isSelectedCategoryiPhones = false;
                            isSelectedCategoryWatch = false;
                            isSelectedCategoryMacbooks = true;
                            selectedPAge = 1;
                          }),
                          child: Column(
                            children: [
                              Text(
                                "Macbooks",
                                style: TextStyle(
                                  color: isSelectedCategoryMacbooks
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                height: 3,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: isSelectedCategoryMacbooks
                                      ? Colors.white
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Transform.rotate(
                        angle: -pi / 2,
                        child: GestureDetector(
                          onTap: () => setState(() {
                            isSelectedCategoryiPhones = true;
                            isSelectedCategoryWatch = false;
                            isSelectedCategoryMacbooks = false;
                            selectedPAge = 2;
                          }),
                          child: Column(
                            children: [
                              Text(
                                "iPhones",
                                style: TextStyle(
                                  color: isSelectedCategoryiPhones
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                height: 3,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: isSelectedCategoryiPhones
                                      ? Colors.white
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Image.asset("assets/home.png"),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: height,
                width: width * 75 / 100,
                color: Colors.white,
                child: myRoutes[selectedPAge],
              )
            ],
          )
        ],
      ),
    );
  }
}
