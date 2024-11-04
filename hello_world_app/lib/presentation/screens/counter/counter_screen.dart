import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget { //cambio de stateless widgets a stateful widget para poder agregar al boton del contador su funcinalidad
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {


  int clickCounter = 0; //variable para contar el numero de clicks

  @override
  Widget build(BuildContext context) {

    //Construye la interfaz de usuario de la pantalla, contiene un texto que muestra el numero de clicks y un boton para incrementar el contador. El boton se actualiza cada vez que el contador cambia con el metodo setState()
    return  Scaffold(
      appBar:  AppBar(
        title: const  Center(
          child:
          Text('Counter Screen')) ,
      ) ,
        body:   Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('$clickCounter',
               style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
               Text('Click${clickCounter== 1 ? '':'s'}',  style: const  TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            clickCounter++;
            setState(() {     //renderisa la app, al click en el boton incrementa el numero de clicks 
              
            });

          },
          child: const Icon(Icons.plus_one, color: Colors.purpleAccent,),
          
          ),
      );
  }
}