import 'package:flutter/material.dart';
import 'package:flutter_appssas/ui/first_dark.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        color: Colors.black,

        home: FirstPage(),



    );
  }
}
