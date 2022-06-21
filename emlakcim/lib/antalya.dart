import 'package:flutter/material.dart';

class antalya extends StatefulWidget {
  const antalya({Key? key}) : super(key: key);

  @override
  State<antalya> createState() => _antalyaState();
}

class _antalyaState extends State<antalya> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(115, 36, 110, 110),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Color.fromARGB(211, 255, 255, 255),
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Antalya",
                      style: TextStyle(
                          color: Color.fromARGB(216, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(73, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/images/istanbulev.jpg",
                            width: 170,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 30),
                        child: Column(
                          children: [
                            Text(
                              "600.000 TL",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "2+1 ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.pin_drop),
                                Text(
                                  "Lara",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
