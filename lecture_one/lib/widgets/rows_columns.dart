import 'package:flutter/material.dart';

class Rows_Columns extends StatelessWidget {
  const Rows_Columns({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Rows And Columns'),
      ),
      body: Container(
        height: h ,
        width: w,
        color: Colors.yellow,
        // child: Wrap(
        //   direction: Axis.vertical,
        //   alignment:WrapAlignment.start,
        //   children: [
        //     Container(
             
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //      Container(
             
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //      Container(
            
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
            
        //       height: 60,
        //       width: 60,
        //       color: Colors.purple,
        //     ),
        //   ],),
        /////////////////////////////////////////////////////////////
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
             
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //      Container(
             
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //      Container(
            
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
            
        //       height: 60,
        //       width: 60,
        //       color: Colors.purple,
        //     ),
        //   ],
        // ),
        child:Column(
          children: [
            Container(
             
              height: 60,
              width: 60,
              color: Colors.red,
            ),
             Container(
             
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
             Container(
            
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
            
              height: 60,
              width: 60,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}