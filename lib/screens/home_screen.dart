import 'package:flt_adaptable/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children:  [
            Positioned(
              top: -200,
              right: -100,
              child: CirculoFondo(
                colors: const [
                  Colors.pinkAccent,
                  Colors.pink,
                ],
                size: 425
              ),
            ),
            Positioned(
              top: -170,
              left: -50,
              child: CirculoFondo(
                colors: const [
                  Colors.orange,
                  Colors.deepOrangeAccent
                ],
                size: 300
              ),
            ),
          ],
        ),
      ),
    );
  }
}