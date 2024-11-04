//Strems son flujos de informacion que puede esar emitiendo valores periodicamente, una vez o nunca

void main() {

emitNumbers().listen((value){
  print('Stream value: $value\n');
});



}

Stream<int> emitNumbers(){

  return Stream.periodic(const Duration(seconds: 1), (value){
    //print('Desde periodic $value');
    return value;
  }).take(5);
  

}