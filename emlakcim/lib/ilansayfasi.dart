import 'package:flutter/material.dart';

class ilansayfasi extends StatefulWidget {
  const ilansayfasi({Key? key}) : super(key: key);

  @override
  State<ilansayfasi> createState() => _ilansayfasiState();
}

class _ilansayfasiState extends State<ilansayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 211, 211),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Row(
                children: [
                  filtreekle("Klimali"),
                  filtreekle("Metrekare"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container filtreekle(String filtreadi) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "$filtreadi",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
