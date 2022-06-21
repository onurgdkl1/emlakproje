import 'package:emlakcim/anasayfa.dart';
import 'package:flutter/material.dart';

class navigationbarekle extends StatelessWidget {
  const navigationbarekle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => anasayfa(),
                    ),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 35,
                  color: Color.fromARGB(115, 68, 211, 211),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => anasayfa(),
                    ),
                  );
                },
                child: Icon(
                  Icons.bookmarks,
                  size: 35,
                  color: Color.fromARGB(115, 68, 211, 211),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
