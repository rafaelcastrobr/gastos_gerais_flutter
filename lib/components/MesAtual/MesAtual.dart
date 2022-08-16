import 'package:flutter/material.dart';
import 'package:gastos_gerais_flutter/models/Dados_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MesAtual extends StatefulWidget {
  MesAtual({super.key});

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
            children: [
              const Icon(Icons.chevron_right),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('1'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('valor'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
