import 'package:flutter/material.dart';
import 'package:lecture_one/widgets/Container_Sized.dart';
import 'package:lecture_one/widgets/rows_columns.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      primaryColor: Colors.deepPurple),
      home: const Rows_Columns(),
    );
  }
}
