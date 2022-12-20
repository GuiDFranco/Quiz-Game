import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_13.dart';

class Question12 extends StatefulWidget {
  const Question12({super.key});

  @override
  State<Question12> createState() => _Question12State();
}

class _Question12State extends State<Question12> {
  static const maxTime = 5;
  var time = maxTime;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          time--;
        });
        if (time == 0) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Loose();
              },
            ),
          );
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async => false),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  '12- Quem foi o primeiro dos 11 da folha a se tornar um Chunin?',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                             timer.cancel();
                            return const Loose();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Sasuke',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                             timer.cancel();
                            return const Loose();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Kiba',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                             timer.cancel();
                            return const Loose();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Neji',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            timer.cancel();
                            return const Question13();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Shikamaru',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                             timer.cancel();
                            return const Loose();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Naruto',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                             timer.cancel();
                            return const Loose();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Sakura',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 300,
                child: Image.asset(
                  'images/Naruto.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: time / maxTime,
                      strokeWidth: 8,
                      backgroundColor: const Color.fromARGB(141, 157, 42, 177),
                    ),
                    Center(
                      child: Text(
                        '$time',
                        style: const TextStyle(fontSize: 35),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
