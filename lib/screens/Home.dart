import 'package:flutter/material.dart';
import 'package:gastos_gerais_flutter/components/MesAtual/MesAtual.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController controllerTitulo = TextEditingController();
  final TextEditingController controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.account_balance,
                color: Colors.amberAccent,
              ),
              TextField(
                controller: controllerTitulo,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.title_outlined,
                    color: Colors.amberAccent,
                  ),
                  label: Text('Título'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: TextField(
                  controller: controllerValor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.attach_money_sharp,
                      color: Colors.amberAccent,
                    ),
                    label: Text('Valor'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.black54),
                  onPressed: () {
                    final String nome = controllerTitulo.text;
                    final String valor = controllerValor.text;
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ),
              const MesAtual(),
              Text(controllerTitulo.text),
              Text(controllerValor.text),
            ],
          ),
        ),
      ),
    );
  }
}
