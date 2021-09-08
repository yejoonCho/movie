import 'package:flutter/material.dart';
import 'package:movie/provider/count_provider.dart';
import 'package:movie/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (BuildContext context) => CountProvider(),
          child: Home(),
        ));
  }
}
