import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_15.dart';

class Question14 extends StatefulWidget {
  const Question14({super.key});

  @override
  State<Question14> createState() => _Question14State();
}

class _Question14State extends State<Question14> {
  static const maxTime = 7;
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
                  '14- Qual filme venceu a como "Melhor Filme" na edição 2021 do Oscar?',
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
                      'O Guia',
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
                      'Moonlight',
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
                      'Corra!',
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
                      'Parasite',
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
                      'Spotlight',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            timer.cancel();
                            return const Question15();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Nomadland',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 150,
                child: Image.asset(
                  'images/Oscar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
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
