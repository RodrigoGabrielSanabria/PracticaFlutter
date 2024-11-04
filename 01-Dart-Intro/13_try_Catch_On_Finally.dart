void main() async {

print('Inicio del programa');

//Manejo de errores con try catch
try {
  //el await espera a obtener el resulado antes de continuar con la ejecucion del programa
  final value = await httpGet('https://Google.com.ar');

print ('Éxito: $value');

} on Exception catch (err) {
  print('Tenemos una Exception: $err');
}
catch (err) {
  print('OOPS! Algo terrible pasó: $err'); 
} finally {
  print('Fin del try y catch');
}

print('Fin del programa');

//feature, promesa de que despues se obtiene un valor luego de una operacion asincrona


}

//await solo se puede usar si la funcion es async
Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parámetros en la URL');
  //throw 'Error en la petición'; //error no controlado al no usar try catch

  //return 'Tenemos un valor de la petición';

}