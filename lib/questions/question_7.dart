import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/loose_page.dart';
import 'package:game_flutter/questions/question_8.dart';

class Question7 extends StatefulWidget {
  const Question7({super.key});

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  static const maxTime = 10;
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
                  '7- Encontre o humor na tirinha:',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: Image.asset(
                  'images/Tirinha.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
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
                  'Não é engraçada',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 60,
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
                  'A criança ser pequena',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 60,
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
                  'Eu ri sem motivo',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        timer.cancel();
                        return const Question8();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Não encontrei',
                  style: TextStyle(fontSize: 30),
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
