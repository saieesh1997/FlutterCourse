import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(
                  label: 'undo',
                  onPressed: () {},
                  textColor: Colors.blue,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.red,
                duration: const Duration(milliseconds: 3000),
                content: const Text('This is Snack bar'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text('Show SnackBar')),
      ),
    );
  }
}
