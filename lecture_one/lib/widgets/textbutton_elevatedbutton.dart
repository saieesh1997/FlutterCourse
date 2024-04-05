import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: () {},
              child: const Text(
                'Press Me',
                style: TextStyle(fontSize: 20.00),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            ////////////////////////////////////////////
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))
                ),
                onPressed: () {},
                child: const Text(
                  'Press Me',
                  style: TextStyle(fontSize: 20.00,color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
