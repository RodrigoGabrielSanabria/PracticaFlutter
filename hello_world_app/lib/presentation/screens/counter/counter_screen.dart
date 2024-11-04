import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget { //cambio de stateless widgets a stateful widget para poder agregar al boton del contador su funcinalidad
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child:
          Text('Counter Screen')) ,
      ) ,
        body: const  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('10', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Clicks', style: TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: const Icon(Icons.plus_one, color: Colors.purpleAccent,),
          
          ),
      );
  }
}