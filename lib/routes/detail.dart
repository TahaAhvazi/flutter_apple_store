// ignore_for_file: unused_import

import 'package:applewatch_store/routes/pageOne.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String price;
  final int tag;
  final String description;
  final String name;
  final String imagePath;
  const DetailPage({
    super.key,
    required this.price,
    required this.tag,
    required this.description,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.only(top: 58.0, left: 10.0),
              child: Image.asset("assets/flashback.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 350,
                width: 300,
                child: Hero(
                  tag: tag,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 5,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 5,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 5,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Series 5",
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
            padding: const EdgeInsets.only(left: 8.0, top: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Text(
                    "\$354.00",
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
                      // ignore: sort_child_properties_last
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.black,
                        weight: 30,
                      )),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 196, 196, 196),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 350,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    "PROCEED TO BUY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                height: 60,
                width: 350,
                child: const Center(
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
