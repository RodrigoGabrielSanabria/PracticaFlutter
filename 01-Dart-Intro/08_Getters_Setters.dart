void main(){

  final mySquare = Square(side: 10);

  mySquare.side = 5;

  print('área: ${mySquare.area}');



}

class Square {

   double _side; // side * side

  // constructor con argumentos y aserciones
  Square ({required double side}) 
  : assert(side >=0, 'side must be >0 '),
   _side =side; 

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('setting new value $value');
    if( value < 0 ) throw 'value must be >0'; //si el numero es negativo arroja error que debe ser mayor a cero
    _side = value;  
  }

  double calculateArea() {return _side * _side;}

}