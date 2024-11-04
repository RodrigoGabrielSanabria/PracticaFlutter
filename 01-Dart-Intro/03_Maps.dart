void main()
{
  final Map<String, dynamic> pokemon = 
  {
    'name' : 'Planton',
    'hp': 100,
    'isAlive': true,
    'abilities' : <String>['impostor'],
    'sprites' : {
      1: 'planton/front.png',
      2: 'planton/back.png'
    }
  };
 
  
  print(pokemon);
  print('name: ${pokemon['name']}');
  print('hp: ${pokemon['hp']}');
  print('sprites: ${pokemon['sprites']}');
  print('back: ${pokemon['sprites'][2]}');
  print('front: ${pokemon['sprites'][1]}');
  
}