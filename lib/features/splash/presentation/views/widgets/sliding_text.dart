import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context , _ )
      {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text('Find Your Style, Tech, and Shine',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff5f656b),
            ),
          ),
        );
      },

    );
  }
}
//Every purchase tells a story