import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_7.dart';

class Question6 extends StatefulWidget {
  const Question6({super.key});

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
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
              Row(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 15.0, bottom: 15, left: 15),
                    padding:
                        const EdgeInsets.only(top: 15.0, bottom: 15, left: 15),
                    child: const Text(
                      '6- Encontre o',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            timer.cancel();
                            return const Question7();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'VERDE',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 43, 107, 45),
                        padding: const EdgeInsets.symmetric(vertical: 30)),
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
                    child: null,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 255, 8),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                    ),
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
                    child: null,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 62, 179, 134),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                    ),
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
                    child: null,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 138, 196, 140),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                    ),
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
                    child: null,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 146, 140),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                    ),
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
                    child: null,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 219, 241, 91),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                    ),
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
                    child: null,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 200,
                child: Image.asset(
                  'images/Interrogação.png',
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
