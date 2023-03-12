// ignore_for_file: file_names

import 'package:applewatch_store/animations/thirdAnimation.dart';
import 'package:applewatch_store/routes/detail.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 20.0),
                child: Image.asset("assets/search.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "i",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 126, 125, 125),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "phones",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ThirdAnimate(
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(_createRouteOne()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: 280,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Hero(
                              tag: 1,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "assets/iphone.png",
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "iPhone 12",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 2.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "the apple watch series3 are designed\nfor peaple who want to keep their\nfitness game on piont",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 15.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    const Text(
                                      "\$620.00",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 196, 196, 196),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.black,
                                          weight: 30,
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ThirdAnimate(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 280,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            fit: BoxFit.cover,
                            "assets/iphonetwo.png",
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "iPhone 14",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, bottom: 2.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "the apple watch series3 are designed\nfor peaple who want to keep their\nfitness game on piont",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, top: 15.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const Text(
                                    "\$1024.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 196, 196, 196),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.black,
                                          weight: 30,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

Route _createRouteOne() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const DetailPage(
      price: "\$650.00",
      tag: 1,
      description:
          "the apple watch series3 are designed\nfor peaple who want to keep their\nfitness game on piont",
      name: "iPhone 12",
      imagePath: "assets/iphone.png",
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(2.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
