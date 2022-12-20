import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_flutter/home_page.dart';
import 'package:game_flutter/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int curentPage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async => false),
      child: Scaffold(
        body: pages[curentPage],
        // bottomNavigationBar: NavigationBar(
        //   destinations: const [
        //     NavigationDestination(
        //         icon: Icon(Icons.rocket_launch), label: 'Play'),
        //     NavigationDestination(icon: Icon(Icons.person), label: 'Perfis'),
        //   ],
        //   onDestinationSelected: (int index) {
        //     setState(() {
        //       curentPage = index;
        //     });
        //   },
        //   selectedIndex: curentPage,
        // ),
      ),
    );
  }
}
