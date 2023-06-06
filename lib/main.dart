import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.brown,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NovoContato()));
        },
        backgroundColor: Colors.brown,
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: const [
          Contato(
            nome: 'Arthur Augusto Lima Mei',
            telefone: '(11) 4002-8922',
          ),
          Contato(
              nome: 'Victor Augusto de Aquino Silva',
              telefone: '(11) 4002-8922'),
          Contato(
              nome: 'Giovanna Nascimento Silva', telefone: '(11) 4002-8922'),
          Contato(nome: 'Jackson Dultra', telefone: '(11) 4002-8922'),
          Contato(nome: 'Madarinha Peia', telefone: '(11) 4002-8922'),
          Contato(nome: 'Jean Mago', telefone: '(11) 4002-8922'),
          Contato(nome: 'Bueno dias', telefone: '(11) 4002-8922'),
          Contato(
              nome: 'Henrique amigo do jackson', telefone: '(11) 4002-8922'),
          Contato(
              nome: 'Henrique amigo do jackson', telefone: '(11) 4002-8922'),
        ],
      ),
    );
  }
}

class Contato extends StatefulWidget {
  final String nome;
  final String telefone;

  const Contato({super.key, required this.nome, required this.telefone});

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
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

class NovoContato extends StatefulWidget {
  const NovoContato({Key? key}) : super(key: key);

  @override
  State<NovoContato> createState() => _NovoContatoState();
}

class _NovoContatoState extends State<NovoContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nome",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Telefone",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 18), backgroundColor: Colors.brown),
                onPressed: () {},
                child: const Text('Adicionar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
