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

    final Size size  = MediaQuery.of(context).size;
    final double pinkSize   = size.width * 0.8;
    final double orangeSize = size.width * 0.57;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children:  [
            Positioned(
              top: -pinkSize * 0.43,
              right: -pinkSize * 0.2,
              child: CirculoFondo(
                size: pinkSize,
                colors: const [
                  Colors.pinkAccent,
                  Colors.pink,
                ],
              ),
            ),
            Positioned(
              top: -orangeSize * 0.55,
              left: -orangeSize * 0.15,
              child: CirculoFondo(
                size: orangeSize,
                colors: const [
                  Colors.orange,
                  Colors.deepOrangeAccent
                ],
              ),
            ),

              Positioned(
              top: orangeSize * 0.45,
              child: Column(
                children: [
                  IconContainer(
                    size: size.width * 0.18,
                  ),
                  const SizedBox( height: 25,),
                  
                  const Text('Hola Amigos! \n Bienvenido de Vuelta', 
                  textAlign: TextAlign.center,
                  
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}