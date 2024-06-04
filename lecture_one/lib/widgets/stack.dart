import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
