import 'dart:math';
import 'package:flutter/material.dart';

class FlutterLogoWithQuestions extends StatelessWidget {
  const FlutterLogoWithQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5, // 50% transparent
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(30.0, 60.0),
                    child: Transform.rotate(
                      angle: -45 * pi / 180,
                      child: const ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        child: Icon(
                          Icons.question_mark_outlined,
                          size: 125,
                        ),
                      ),
                    ),
                  ),
                  const ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    child: Icon(
                      Icons.question_mark_outlined,
                      size: 125,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-30.0, 40.0),
                    child: Transform.rotate(
                      angle: 45 * pi / 180,
                      child: const ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        child: Icon(
                          Icons.question_mark_outlined,
                          size: 125,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
                child: FlutterLogo(
                  size: 125,
                ),
              ),
            ],
          ),
        ));
  }
}
