void main() {
  //Estructuras de colecciones

  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];

  print ('List original $numbers');
  print ('Length ${numbers.length}'); //Cantidad de datos en el listado
  print ('Index 0: ${numbers[0]}'); //Muestra el primer numero tomando de indice el 0
  print ('First: ${numbers.first}'); //muesta el primer numero
  print ('Reverse: ${numbers.reversed}'); // imprime de derecha a izquierda y como iterable con ()


  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}'); //devuelve listado con [] usando tolist
  print('Set: ${reversedNumbers.toSet()}'); // valores unicos, no duplicados..set esta entre {}

 
  final numbersGreaterThan5 = numbers.where((num){
    return num > 5; //true
  });

  print('>5: $numbersGreaterThan5'); //Iterable ()
  print('>5: ${numbersGreaterThan5.toSet()}'); //set de datos ()



}