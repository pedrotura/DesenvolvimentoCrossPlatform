import 'package:flutter/material.dart';
import 'package:lista_contatos/classes/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter List View',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple[50]
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Contato> _listaContatos = [
    Contato('Alma Christensen', 'alma.christensen@example.com'),
    Contato('Sergio Hill', 'sergio.hill@example.com'),
    Contato('Malo Gonzalez', 'malo.gonzalez@example.com'),
    Contato('Miguel Owens', 'miguel.owens@example.com'),
    Contato('Lilou Dumont', 'lilou.dumont@example.com'),
    Contato('Ashley Stewart', 'ashley.stewart@email.com'),
    Contato('Roman Zhang', 'roman.zhang@email.com'),
    Contato('Alma Christensen', 'alma.christensen@example.com'),
    Contato('Sergio Hill', 'sergio.hill@example.com'),
    Contato('Malo Gonzalez', 'malo.gonzalez@example.com'),
    Contato('Miguel Owens', 'miguel.owens@example.com'),
    Contato('Lilou Dumont', 'lilou.dumont@example.com'),
    Contato('Ashley Stewart', 'ashley.stewart@email.com'),
    Contato('Roman Zhang', 'roman.zhang@email.com'),
    Contato('Alma Christensen', 'alma.christensen@example.com'),
    Contato('Sergio Hill', 'sergio.hill@example.com'),
    Contato('Malo Gonzalez', 'malo.gonzalez@example.com'),
    Contato('Miguel Owens', 'miguel.owens@example.com'),
    Contato('Lilou Dumont', 'lilou.dumont@example.com'),
    Contato('Ashley Stewart', 'ashley.stewart@email.com'),
    Contato('Roman Zhang', 'roman.zhang@email.com')
  ];
  int _contFavoritos = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Center(
              child: Text('Favoritos: $_contFavoritos')
            ),
          )
        ]
      ),
      body: ListView.builder(
        itemCount: _listaContatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(_listaContatos[index].nomeCompleto.substring(0, 1))
            ),
            title: Text(_listaContatos[index].nomeCompleto),
            subtitle: Text(_listaContatos[index].email),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  if (_listaContatos[index].isFavorited) {
                    _listaContatos[index].isFavorited = false;
                    _contFavoritos--;
                  } else {
                    _listaContatos[index].isFavorited = true;
                    _contFavoritos++;
                  }
                });
              },
              icon: _listaContatos[index].isFavorited ?
              const Icon(Icons.favorite, color: Colors.red) :
              const Icon(Icons.favorite_border)
              )
          );
        },
      )
    );
  }
}