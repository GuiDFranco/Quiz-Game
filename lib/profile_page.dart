import 'package:flutter/material.dart';

const int itemCount = 10;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ultmate Quiz Master'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Jogador ${(index + 1)}'),
            leading: const Icon(Icons.person),
            trailing: TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Icon(
                Icons.edit,
              ),
            ),
          );
        },
      ),
    );
  }
}
