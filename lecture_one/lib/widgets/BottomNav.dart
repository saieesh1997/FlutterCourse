import 'package:flutter/material.dart';
import 'package:lecture_one/widgets/alert.dart';
import 'package:lecture_one/widgets/animated_text.dart';
import 'package:lecture_one/widgets/rows_columns.dart';




class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
 int selectedIndex =0;
 PageController pageController = PageController();
 

// List<Widget> widgets =[
//   const Text('Home'),
//   const Text('Add'),
//   const Text('Profile'),
// ];

void onItemTapped( int index){
  setState(() {
    selectedIndex = index;
  });
  pageController.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botttom Navigation Bar'),
      ),
      body: Center(child: PageView(controller: pageController,
      children: const [
        AlertWidget(),
        AnimatedTextPackage(),
        Rows_Columns(),
      ],)),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green ,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
      ),
      
    );
  }
}