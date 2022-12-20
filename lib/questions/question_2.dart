import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_flutter/questions/question_3.dart';
import '../loose_page.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
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
                  '2- Ache a chama mais intensa',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  const Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  const Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            timer.cancel();
                            return const Question3();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.local_fire_department,
                      size: 50,
                      color: Color.fromARGB(255, 255, 5, 5),
                    ),
                  ),
                  const Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
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
