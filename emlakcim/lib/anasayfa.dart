import 'package:emlakcim/ilansayfasi.dart';
import 'package:emlakcim/kayitol.dart';
import 'package:emlakcim/materials/navigationbar.dart';
import 'package:emlakcim/login-page.dart';
import 'package:emlakcim/sehirler.dart';
import 'package:flutter/material.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 233, 233),
                image: DecorationImage(
                  image: AssetImage('assets/images/arkaplan.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(167, 0, 0, 0), BlendMode.darken),
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 10),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(115, 68, 211, 211),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 10, bottom: 10),
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                                color: Color.fromARGB(255, 228, 228, 228),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => kayitol(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(115, 68, 211, 211),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 10, bottom: 10),
                          child: Text(
                            "Kayıt Ol",
                            style: TextStyle(
                                color: Color.fromARGB(255, 228, 228, 228),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Yeni Evinizi Bulmaya \n       Hoşgeldiniz",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 228, 228, 228),
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sehirler()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 25, left: 25, top: 10, bottom: 10),
                      child: Text(
                        "Şehir Seçiniz",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(115, 68, 211, 211),
                        onPrimary: Color.fromARGB(255, 228, 228, 228),
                        elevation: 20, // Elevation
                        shadowColor: Color(0xffE7EEF5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ]),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sehirler()));
              },
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 226, 220, 220)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, top: 35, right: 35),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 35, left: 35, top: 16, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.home,
                                  size: 35,
                                  color: Color.fromARGB(115, 68, 211, 211)),
                              SizedBox(
                                width: 10,
                              ),
                              Column(children: [
                                Text(
                                  "Ev",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35, top: 35),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 25, left: 25, top: 16, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.home,
                                  size: 35,
                                  color: Color.fromARGB(115, 68, 211, 211)),
                              SizedBox(
                                width: 10,
                              ),
                              Column(children: [
                                Text(
                                  "Daire",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    top: 30,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Öne Çıkanlar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                            color: Color.fromARGB(255, 146, 22, 168),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev1.jpg",
                                width: 90,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3+1 Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Beşiktaş",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev2.png",
                                width: 87,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "5+2  Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Üsküdar",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev3.jpg",
                                width: 90,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3+1 Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Kadıköy",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev4.jpg",
                                width: 87,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "2+1 Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Avcılar",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev5.jpg",
                                width: 90,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3+1 Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Beşiktaş",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/ev6.jpg",
                                width: 87,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "5+2  Daire",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.pin_drop),
                                    Text(
                                      "Üsküdar",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            navigationbarekle(),
          ],
        ),
      ),
    );
  }
}
