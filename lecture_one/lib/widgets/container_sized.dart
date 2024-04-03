import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Containner and Sized Box'),
      ),
      body:  Center(
        child: Container(
          height: 100,
          width: 100,
          decoration:  const BoxDecoration(
              color: Colors.blue,
              // shape: BoxShape.circle
             // borderRadius: BorderRadius.circular(20),
             borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
             boxShadow:[
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
                color: Colors.white
              )
             ] ,
          ),
          child: const Center(
            child: Text("Hello",style: TextStyle(
              fontSize: 20.00
            ),),
          ),
        ),
      )
        // child: SizedBox(
        //   height: 50,
        //   width: 50,
        //   child: Text("Hello"),
        // ),
      ,
    ); //Scaffold is  the roof of application start off app
  }
}
