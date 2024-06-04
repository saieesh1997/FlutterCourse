import 'package:flutter/material.dart';
import 'package:flutter_layout/immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Welcome to Flutter'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: const ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text("I'm a Drawer!"),
          ),
        ),
      ),
    );
  }
}
