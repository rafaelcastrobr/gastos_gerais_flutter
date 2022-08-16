import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gastos_gerais_flutter/components/MesAtual/MesAtual.dart';
import 'package:gastos_gerais_flutter/models/Dados_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controllerTitulo = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

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
                controller: _controllerTitulo,
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
                  controller: _controllerValor,
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
                    _entradas();
                    _exibeDados();
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ),
              //MesAtual(),
            ],
          ),
        ),
      ),
    );
  }

  void _entradas() {
    Dados newDados = Dados(
      titulo: _controllerTitulo.text,
      valor: _controllerValor.text,
    );

    print(newDados);
    _salvaDados(newDados);
  }

  void _salvaDados(Dados dados) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      "DADOS_USER",
      jsonEncode(dados.toJson()),
    );
  }

  void _exibeDados() async {
    Dados pegaUsuario = await _getSalvaUsuario();
  }

  Future<Dados> _getSalvaUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonUser = prefs.getString("DADOS_USER");
    print(jsonUser);
  }
}
