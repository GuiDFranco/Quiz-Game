import 'package:flutter/material.dart';
import 'package:game_flutter/questions/question_1.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async => false),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Instruções'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'Acerte as perguntas antes do tempo acabar.\f\fCada pergunta tem um tempo determinado.\f\fCaso o tempo acabe ou a resposta for errada, você vai voltar para o início.\f\fDesvende os mistérios e avançe o quanto conseguir.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 70,
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
                  'Começar',
                  style: TextStyle(
                    fontSize: 35,
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
