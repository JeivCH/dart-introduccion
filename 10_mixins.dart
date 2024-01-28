abstract class Animal{}


//solo habra caracteristicas de mamiferos espeficicas 
abstract class Mamifero extends Animal{}

abstract class Ave extends Animal{}
// solo cosas que tengan que ver con peces
abstract class Pez extends Animal{}


mixin Volador{
  void volar() =>print('estoy volando!');
}

mixin Caminante{
  void caminar() =>print('estoy andando!');
}

mixin Nadador{
  void nadar() =>print('estoy nadando!');
}


class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}

class Pato extends Ave with Volador, Nadador,Caminante{}

class Tiburon extends Pez with Nadador{}

class PezVolador extends Pez with Volador, Nadador{}

void main() {
  
 final flipper = Delfin();
  flipper.nadar();
  
  final seth = Gato();
  seth.caminar();
  
  final donald = Pato();
  donald.caminar();
  donald.nadar();
  
  
}








