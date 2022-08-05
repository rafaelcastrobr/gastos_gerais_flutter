import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.account_balance,
              color: Colors.amberAccent,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Título'),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Valor'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.black54),
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                  )),
            )
          ],
        ),
      )),
    );
  }
}
