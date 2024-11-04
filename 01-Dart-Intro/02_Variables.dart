void main()
{
  final String pokemon ='Planton';
  final int hp = 100;
  final bool isAlive = true; //tipo de dato: V o F
  final List<String> abilities = ['impostor']; //[] Listado
  final sprites = <String>['planton/front.png', 'dito/back.png'];

  //dynamic == null 
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4]; //Listado 
  errorMessage = {1,2,3,4,5,6}; //Set de datos
  errorMessage = ()=> true; //funcion que de vuelve valor bool
  errorMessage = null; //Devuelve valor null
  

  print (""" $pokemon \n $hp \n $isAlive \n $abilities \n $sprites \n $errorMessage""");
}