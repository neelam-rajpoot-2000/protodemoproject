import 'package:flutter/material.dart';

import 'package:protodemoproject/task3/practo.dart';

import 'find_&_book.dart';
import 'personal.dart';
import 'mobile_no.dart';
import 'medical.dart';
import 'personal_detail.dart';
import 'practo_care.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      home: PractoFile(),
    );
  }
}



