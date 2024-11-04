void main(){

print('Inicio del programa');

httpGet('https://Google.com.ar').then((value) {
  print(value);
}).catchError((err) {     //Maneja el error que lanza la app

  print('Error: $err');

});

print('Fin del programa');

//feature, promesa de que despues se obtiene un valor luego de una operacion asincrona


}

Future<String> httpGet(String url){

  return Future.delayed( const Duration(seconds: 1),  () {
      
      throw 'Error en la petición http';
    //return 'Respuesta de la petición HTTP';
  }); //tiempo para que se ejecute la petición

}