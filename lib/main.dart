import 'package:flutter/material.dart';
import 'package:listacontatos/novocontato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de contatos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Lista de contatos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Contato> listaContato = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.brown,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Contato contato = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NovoContato()));
          setState(() {
            listaContato.add(contato);
          });
        },
        backgroundColor: Colors.brown,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: listaContato.length,
        itemBuilder: (BuildContext context, int index){
          return ContatoContainer(nome: listaContato[index].nome, telefone: listaContato[index].telefone);
        },
      ),
    );
  }
}

class Contato {
  String nome;
  String telefone;

  Contato({required this.nome, required this.telefone});
}

class ContatoContainer extends StatefulWidget {
  final String nome;
  final String telefone;

  const ContatoContainer({super.key, required this.nome, required this.telefone});

  @override
  State<ContatoContainer> createState() => _ContatoContainerState();
}

class _ContatoContainerState extends State<ContatoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.account_circle,
            color: Colors.black,
            size: 64.0,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.nome,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                widget.telefone,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}


