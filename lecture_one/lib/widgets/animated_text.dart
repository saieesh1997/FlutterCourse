import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextPackage extends StatelessWidget {
  const AnimatedTextPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text App'),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Saieesh Naik',
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 500)
              )
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                'Saieesh Naik',
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                
              )
            ],
            // totalRepeatCount: 4,
            // pause: const Duration(milliseconds: 200),
            // displayFullTextOnTap: true,
            // stopPauseOnTap: true,
          ),

        ],
      ),
    );
  }
}
