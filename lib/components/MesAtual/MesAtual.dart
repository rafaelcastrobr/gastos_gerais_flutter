import 'package:flutter/material.dart';

class MesAtual extends StatefulWidget {
  const MesAtual({super.key});

  @override
  State<MesAtual> createState() => _MesAtualState();
}

class _MesAtualState extends State<MesAtual> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
        child: Column(
          children: [
            const Text(
              'Mês Atual',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Row(
              children: const [
                Icon(Icons.chevron_right),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('titulo'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('valor'),
                ),
              ],
            ),
          ],
        ));
  }
}
