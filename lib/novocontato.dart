import 'package:flutter/material.dart';
import 'package:listacontatos/main.dart';

class NovoContato extends StatefulWidget {
  const NovoContato({Key? key}) : super(key: key);

  @override
  State<NovoContato> createState() => _NovoContatoState();
}

class _NovoContatoState extends State<NovoContato> {
  final nomeController = TextEditingController();
  final telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void retornaNomeTelefone() {
      Navigator.pop(
          context, Contato(nome: nomeController.value.text, telefone: telefoneController.value.text));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Contato'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nomeController,
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
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: telefoneController,
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
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: Colors.brown),
                onPressed: retornaNomeTelefone,
                child: const Text('Adicionar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
