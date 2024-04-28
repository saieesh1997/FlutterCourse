import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doraemon Image'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: 10,color: Colors.yellow,spreadRadius: 5.0)
            ],
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: NetworkImage(
                  'https://www.partysuppliesindia.com/cdn/shop/products/A1_33_261dffb8-1073-462d-b670-13e2d0b2616a.jpg?v=1635508143&width=750',
                ),
                fit: BoxFit.cover),
            color: Colors.red,
          ),
          height: 200,
          width: 150,
          // child: Image.network('https://www.partysuppliesindia.com/cdn/shop/products/A1_33_261dffb8-1073-462d-b670-13e2d0b2616a.jpg?v=1635508143&width=750',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

//Catched Network Image pub dev