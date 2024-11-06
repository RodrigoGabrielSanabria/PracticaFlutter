import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  //cambio de stateless widgets a stateful widget para poder agregar al boton del contador su funcinalidad
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0; //variable para contar el numero de clicks

  @override
  Widget build(BuildContext context) {
    //Construye la interfaz de usuario de la pantalla, contiene un texto que muestra el numero de clicks y un boton para incrementar el contador. El boton se actualiza cada vez que el contador cambia con el metodo setState()
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          actions: [
            //Boton para resetear el contador
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 10),
            CustomButton(icon: Icons.refresh_rounded),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.exposure_minus_1_outlined),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.plus_one),
          ],
        ));
  }
}

//Crea una clase mediante la extracion del widget para re utilizar los botones sin necesidad de pegar el codigo y repetirlo
class CustomButton extends StatelessWidget {

  final IconData icon;
  

  const CustomButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {
        
      },
      child: Icon(icon),
    );
  }
}