import 'package:emlakcim/anasayfa.dart';

import 'package:emlakcim/istanbul.dart';
import 'package:emlakcim/login-page.dart';
import 'package:emlakcim/sehirler.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gecis(),
  ));
}

class gecis extends StatelessWidget {
  const gecis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return anasayfa();
  }
}
