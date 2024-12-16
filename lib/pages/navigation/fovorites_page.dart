import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class FovoritesPage extends StatefulWidget {
  const FovoritesPage({super.key});

  @override
  State<FovoritesPage> createState() => _FovoritesPageState();
}

class _FovoritesPageState extends State<FovoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: CarouselSlider(
          slideTransform: CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            padding: EdgeInsets.only(bottom: 50),
            currentIndicatorColor: Colors.white,
          ),
          unlimitedMode: true,
          children: [
            Container(
              color: const Color.fromARGB(200, 0, 35, 189),
            ),
            Container(
              color: const Color.fromARGB(255, 2, 116, 2),
            ),
            Container(
              color: const Color.fromARGB(255, 255, 251, 18),
            ),
            Container(
              color: const Color.fromARGB(255, 255, 54, 54),
            )
          ]),
    );
  }
}
