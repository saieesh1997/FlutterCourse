import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', 'apple', 'maango', 'banana'];

  Map fruits_person = {
    'fruits': ['orange', 'apple', 'maango', 'banana'],
    'names': ['vipul', 'Charan', 'varad', 'Gourish']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and Grid'),
        backgroundColor: Colors.teal,
      ),
      // body: ListView.builder(
      //   itemCount: fruits.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: const Icon(Icons.person),
      //         title: Text(fruits_person['fruits'][index]),
      //         subtitle: Text(fruits_person['names'][index]),
      //       ),
      //     );
      //   },
      // ),
      // body: GridView(
      //   gridDelegate:
      //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      //       crossAxisSpacing: 20,mainAxisSpacing: 20),
      //       children: const [
      //         Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //          Card(
      //           child: Center(child: Text('Orange')),
      //         ),
      //       ],
      // ),

      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(child: Center(child: Text(fruits[index])));
          }),
    );
  }
}
