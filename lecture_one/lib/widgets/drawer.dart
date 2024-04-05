import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                color: Colors.teal,
                padding: const EdgeInsets.all(5),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQofvAwCR4LjhG9o6zCmISx8kfyWzY4qlRv8hG7dxVW3A&s') ,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saieesh Naik'),
                        Text('saie@gmail.com'),
                      ],
                    )
                  ],
                ),
              )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared With Me'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ), const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Upload'),
              ),
               const ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer Widget'),
      ),
      body: Center(
        child: Container(
          child: const Text('Hey There'),
        ),
      ),
    );
  }
}
