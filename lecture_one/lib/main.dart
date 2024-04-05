import 'package:flutter/material.dart';
import 'package:lecture_one/widgets/dismissible.dart';
import 'package:lecture_one/widgets/drawer.dart';
import 'package:lecture_one/widgets/list_grid.dart';
import 'package:lecture_one/widgets/snack_bar.dart';
// import 'package:lecture_one/widgets/Container_Sized.dart';
// import 'package:lecture_one/widgets/rows_columns.dart';
// import 'package:lecture_one/widgets/textbutton_elevatedbutton.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      primaryColor: Colors.deepPurple),
      home: const DrawerWidget(),
    );
  }
}
