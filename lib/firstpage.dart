import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Style")),
      body: ListView(children: [
        Container(

          height: 100,
          color: Colors.orange,
          child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 20.0, height: 100.0),
            const Text(
              'Be',
              style: TextStyle(fontSize: 43.0,color: Colors.white),
            ),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Horizon',
                fontWeight: FontWeight.bold,
                color: Colors.white,


              ),
              child: AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  RotateAnimatedText('AWESOME'),
                  RotateAnimatedText('OPTIMISTIC'),
                  RotateAnimatedText('DIFFERENT'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),),
        Container(
          height: 100,
          color: Colors.brown,
          child: Row(children: [
            SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText('do IT!'),
                  FadeAnimatedText('do it RIGHT!!'),
                  FadeAnimatedText('do it RIGHT NOW!!!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          )
          ],),
        ),
        Container(

          child: Row(children: [
          SizedBox(
            width: 300
            ,
            child: TextLiquidFill(
              text: 'LIQUIDY',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.redAccent,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 300.0,
            ),
          )
        ],),),
      ],),

    );
  }
}
