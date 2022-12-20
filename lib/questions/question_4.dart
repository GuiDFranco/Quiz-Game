import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_5.dart';

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  State<Question4> createState() => _Question1State();
}

class _Question1State extends State<Question4> {
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
                  '4- Qual a cor do casaco de Nailson?',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 40,
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
                      'Preto',
                      style: TextStyle(fontSize: 25, color: Colors.black),
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
                      'Vermelho',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
                      'Azul',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
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
                      'Verde',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
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
                      'Branco',
                      style: TextStyle(fontSize: 25, color: Colors.grey),
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
                      'Amarelo',
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
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
                      'Roxo',
                      style: TextStyle(fontSize: 25, color: Colors.purple),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            timer.cancel();
                            return const Question5();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Rosa',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 245, 150, 182),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
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
                      'Laranja',
                      style: TextStyle(fontSize: 25, color: Colors.orange),
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
                      'Marrom',
                      style: TextStyle(fontSize: 25, color: Colors.brown),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
