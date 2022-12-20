import 'package:flutter/material.dart';
import 'package:game_flutter/questions/question_1.dart';
import 'package:game_flutter/start_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: (() async => false),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: sizeScreen.height,
              width: sizeScreen.width,
              child: Image.asset(
                'images/Back.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Question1();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      height: 11,
                      fontFamily: 'DotGot', 
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const StartPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Instruções',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      height: 6,
                      fontFamily: 'DotGot'
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
