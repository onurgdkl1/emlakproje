import 'package:emlakcim/anasayfa.dart';
import 'package:emlakcim/login-page.dart';
import 'package:flutter/material.dart';
import 'package:emlakcim/palatte.dart';
import 'package:firebase_auth/firebase_auth.dart';

class kayitol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final epostacontroller = TextEditingController();
    final sifrecontroller = TextEditingController();

    final adcontroller = TextEditingController();
    final soyadcontroller = TextEditingController();
    final _firebaseAuth = FirebaseAuth.instance;
    Future<User?> kayidiniyap(String eposta, String sifre) async {
      final userCredentials = await _firebaseAuth
          .createUserWithEmailAndPassword(email: eposta, password: sifre);
      return userCredentials.user;
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(115, 68, 211, 211)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 25,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "KAYIT OL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "HOŞ GELDİNİZ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(88, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(115, 68, 211, 211),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(115, 62, 247, 247)),
                                child: TextField(
                                  controller: adcontroller,
                                  decoration: InputDecoration(
                                      hintText: "ad",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(115, 62, 247, 247)),
                                child: TextField(
                                  controller: soyadcontroller,
                                  decoration: InputDecoration(
                                      hintText: "soyad",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(115, 62, 247, 247)),
                                child: TextField(
                                  controller: epostacontroller,
                                  decoration: InputDecoration(
                                      hintText: "e posta adresi ",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(115, 62, 247, 247)),
                                child: TextField(
                                  controller: sifrecontroller,
                                  decoration: InputDecoration(
                                      hintText: "şifre",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          onPressed: () async {
                            final user = await kayidiniyap(
                                epostacontroller.text, sifrecontroller.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, left: 25, right: 25),
                            child: Text(
                              "Kayıt Ol",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
