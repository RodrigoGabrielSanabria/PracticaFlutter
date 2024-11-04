void main () {

  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 20)}');

  print(greetPerson(name: 'Rodrigo',message: 'Hi'));

}

String greetEveryone() =>'Hello, everyone!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {

  //b ??= 0;

  return a + b;
}

String  greetPerson({required String  name, String message = 'Hola' }){   //al tener {} se vuelven opcionales los parametros

  return '${message}, Rodrigo';

}
 



