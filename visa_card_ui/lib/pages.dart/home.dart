import 'package:flutter/material.dart';
import 'package:visa_card_ui/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          color: Colors.red,
          margin: const EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
