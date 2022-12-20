import 'package:flutter/material.dart';
import 'package:game_flutter/main.dart';

class Win extends StatelessWidget {
  const Win({Key? key}) : super(key: key);

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
                'images/Galaxia.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Você alcançou a vitória, o universo está a seu alcance.Retorne e viva a glória eterna que foi conquistada.\f\fVocê é um ULTEMATE QUIZ MASTER',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'DotGot'
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                  TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RootPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Voltar',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontFamily: 'DotGot',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
