void main() async {

print('Inicio del programa');

//Manejo de errores con try catch
try {
  //el await espera a obtener el resulado antes de continuar con la ejecucion del programa
  final value = await httpGet('https://Google.com.ar');

print (value);
} catch (err) {
  print('Tenemos un error: $err'); 
}

print('Fin del programa');

//feature, promesa de que despues se obtiene un valor luego de una operacion asincrona


}

//await solo se puede usar si la funcion es async
Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la petición';

  //return 'Tenemos un valor de la petición';

}