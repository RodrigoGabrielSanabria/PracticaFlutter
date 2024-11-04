void main() {

final wolverine = new Hero (name: 'Logan');

  print(wolverine.toString() );
  print('Nombre:  ${wolverine.name}');
  print('Poder: ${wolverine.power}');

}

class Hero 
{

  String name;
  String power;

  Hero({
   required this.name, 
   this.power = 'Sin poder'
    
    });

 // Hero (String pName, String pPower)

 //: name = pName,
 // power = pPower;

 @override              //sobre escribe el metodo toString
  String toString() {
    return 'Hero: $name, Power: $power';
  
  }

}