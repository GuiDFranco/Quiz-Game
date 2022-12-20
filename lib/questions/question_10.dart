import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_11.dart';

class Question10 extends StatefulWidget {
  const Question10({super.key});

  @override
  State<Question10> createState() => _Question10State();
}

class _Question10State extends State<Question10> {
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
                  '10- Quanto tempo durou a Guerra dos 100 anos?',
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
                      '100 anos',
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
                      '107 anos',
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
                            return const Question11();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      '116 anos',
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
                      '102 anos',
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
                      '98 anos',
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
                      '101 anos',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 180,
                child: Image.asset(
                  'images/Guerra100.jpg',
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
