import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _tamanho = 300;
  double _corVermelho = 0;
  double _corVerde = 0;
  double _corAzul = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter States'),
        actions: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (_tamanho > 50) {
                  _tamanho -= 50;
                }
              });
            }
          ),
          IconButton(
            icon: const Text('S'),
            onPressed: () {
              setState(() {
                _tamanho = 50;
              });
            }
          ),
          IconButton(
            icon: const Text('M'),
            onPressed: () {
              setState(() {
                _tamanho = 300;
              });
            }
          ),
          IconButton(
            icon: const Text('L'),
            onPressed: () {
              setState(() {
                _tamanho = 500;
              });
            }
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                if (_tamanho < 500) {
                  _tamanho += 50;
                }
              });
            }
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(
                Icons.lock_clock,
                size: _tamanho,
                color: Color.fromRGBO(_corVermelho.toInt(), _corVerde.toInt(), _corAzul.toInt(), 1)
                )
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.red,
                    value: _corVermelho,
                    min: 0,
                    max: 255, 
                    onChanged: (value) {
                      setState(() {
                        _corVermelho = value;
                      });
                    }
                  )
                ),
                Text(_corVermelho.toInt().toString(),
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )
                )
              ]
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.green,
                    value: _corVerde,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      setState(() {
                        _corVerde = value;
                      });
                    }
                  )
                ),
                Text(_corVerde.toInt().toString(),
                  style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
                )
              ]
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.blue,
                    value: _corAzul,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      setState(() {
                        _corAzul = value;
                      });
                    }
                  )
                ),
                Text(_corAzul.toInt().toString(),
                  style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}