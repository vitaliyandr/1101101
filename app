import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/home.dart';

class Application extends StatelessWidget {
  const Application({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/space.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    child: Home(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
