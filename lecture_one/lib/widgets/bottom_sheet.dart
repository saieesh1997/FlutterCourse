import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColorLight,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('i Love Orange'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('i Love Apple'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('i Love Orange'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('i Love Apple'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('i Love Orange'),
                      )
                    ],
                  );
                });
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
