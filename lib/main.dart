import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  void testvoid() {
    print('button works');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: const Text("Knight Time"),
            actions: <Widget>[
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                ),
                onPressed: () {
                  testvoid();
                },
                child: Text("Reload"),
              ),
            ]),
        //body: Row(
         // children: [Icon(Icons.person), Icon(Icons.leaderboard)],
        //),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (iconNum) {
            if(iconNum == 0){
              
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.school_rounded),
              label: 'current',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
              
              )
          ],
          ),
      ),
    );
  }
}
