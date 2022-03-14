import 'package:flt_adaptable/utils/responsive.dart';
import 'package:flt_adaptable/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize   = responsive.wPercent(80);
    final double orangeSize = responsive.wPercent(57);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.heigth,
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
                        size: responsive.wPercent(18)
                      ),
                      SizedBox( height: responsive.dPercent(2.5),),
                      
                      Text('Hola Amigos! \n Bienvenido de Vuelta', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: responsive.dPercent(1.7)),
                      
                      ),
                    ],
                  )
                ),
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}