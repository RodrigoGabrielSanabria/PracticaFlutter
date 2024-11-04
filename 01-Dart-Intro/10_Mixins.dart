abstract class Animal {}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {

  void volar() => print('Estoy volando!');
}

mixin Caminante {

  void caminar() => print('Estoy caminando!');
}

mixin Nadador {

  void nadar() => print('Estoy nadando!');
}

class Delfin extends Mamifero with Nadador{}
class Muercielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main() {

  final flipper = Delfin();

  flipper.nadar();

  final batman = Muercielago();
  batman.volar();
  batman.caminar();

  final namor = Pato();
  namor.volar();
  namor.caminar();
  namor.nadar();

}
