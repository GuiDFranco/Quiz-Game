import 'package:flutter/material.dart';
import 'package:game_flutter/main.dart';
import 'package:game_flutter/questions/question_1.dart';

class Loose extends StatelessWidget {
  const Loose({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async => false),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 200,
                child: Image.asset(
                  'images/Fail.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'A luta é grande, mas a derrota é certa. Não perca agora, tente e falhe novamente!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 32,
                    fontFamily: 'Comic',
                    height: 1.7,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              OutlinedButton(
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
                  'Retornar',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
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
                  'Desistir',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
