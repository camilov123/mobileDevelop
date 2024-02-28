//import 'dart:math';

/*Print number from 1 to 100.
if is mult of 3 print fizz
if is mult of 5 print bazz
if is mult of 3 and 5 print fizzBazz
*/
/*temporal(a) {
  const t = 0; // En ejecución, no sabe qué es el valor de a
  final f = a; // Acepta parámetros de entrada

  for (var i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      print("The number is: ${i}");
    }
    print(i);
  }
  if (a == 0) {
    print("This is equals to 0");
  } else {
    print("This is not equals to 0");
  }
}

fizzBuzz(a) {
  if (a % 3 == 0 && a % 5 == 0) print("fizz Buzz");

  if (a % 3 == 0) print("Fizz");

  if (a % 5 == 0) print("Buzz");
}*/

/*anagrama(String string1, String string2) {
  var word1 = string1.toLowerCase().split("");
  word1.sort();
  var word2 = string2.toLowerCase().split("");
  word2.sort();
  if (word1.join() != word2.join()) {
    print(string1 + " is has not the same letter to " + string2);
  } else {
    print(string1 + " is has the same letter to " + string2);
  }
}*/

//void main() {
//temporal(0);

//anagrama("castor", "castro");

/*for (var i = 0; i <= 100; i++) {
    print(fizzBuzz(i));
  }*/
/*const z = 50;
  final v = 60;
  var a = 2;
  var d = 3;
  var b = 'This is a text';
  var c = 'This is a text';
  print(a + d);*/
/*List<int> temp = [1, 5, 3, 10, 2];
  print("maximum ${temp.reduce(max)}");
  print("minimum ${temp.reduce(min)}");

  const String nombre = "Cristian";
  const String temporal = "temporal";
  dynamic numero = '';
  numero = 12;
  print("""
  $numero
  $temporal
  $nombre
  """);
  print("mi nombr es ${nombre.toUpperCase()}");*/

/*final Map<String, dynamic> persona = {
    'nombre': 'Cristian',
    'Apellido': 'Afanador',
    'edad': 30,
    'vivo': true,
    'foto': <int, String>{
      1: 'foto_1.jpg',
      2: 'foto_1.jpg',
    }
  };

  print(persona);
  print(persona["nombre"]);
  print(persona["Apellido"]);
  print(persona["foto"][2]);*/

/*final List<int> number = [1, 2, 3, 5, 4, 4, 4, 6, 5, 8, 7];
  print(number);
  print("Tamaño del arrego ${number.length}");
  print("Primero ${number[0]}");
  print("Primero ${number.first}");
  print("último ${number.last}");

  final contrario = number.reversed;
  print(contrario.toList());
  print(contrario.toSet());*/
//print(saludo());
//print(saludo_dos());
//print(suma_dos_numeros(1, 6));
//print(suma_dos_numeros(a: 1));
/*final per = Persona(nombre: 'Andres', apellido: 'Delgado');

  final p = {"nombre": 'Cristian', "apellidos": 'pere'};

  final perso = Persona.fromJson(p);
  print(perso.nombre);
  print(perso.apellido);*/
//}

/*String saludo() {
  return "Hola";
}

String saludo_dos() => "Hola x2";

/*int suma_dos_numeros(int a, [int b = 0]) {
  return a + b;
}*/
int suma_dos_numeros({required int a, int b = 0}) {
  return a + b;
}*/

/*class Persona {
  String nombre;
  String apellido;

  /*Persona(String n_nombre, String n_apellido)
      : nombre = n_nombre,
        apellido = n_apellido;*/

  Persona({required this.nombre, required this.apellido});
  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json["nombre"] ?? 'No hay nombre',
        apellido = json["apellido"] ?? 'No hay apellido';
  @override
  String toString() {
    return "Esto es la clase";
  }
}*/

/*void main() {
  final square = Cuadrado(lado: 5);
  print(square);
  square._lado = -5.0;
  print(square._lado);
}

class Cuadrado {
  double _lado;

  Cuadrado({required double lado}) : _lado = lado;

  set lado(double value) {
    _lado = value;
  }

  double area_cuadrado() {
    return _lado * _lado;
  }
}*/

/*void main() async {
  print("INICIO");
  try {
    final pet = await httpGet('lorem ipsum');
    print(pet);
  } on Exception {
    print("Error tipo exception");
  } catch (err) {
    print("error $err");
  } finally {
    print("Siempre");
  }
  /*httpGet('Sample text')
      .then((value) => {print(value)})
      .catchError((err) => {print("Este es el error $err")});*/
  print("FINAL");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw Exception("Error");
  return "llegué";
  /*  throw "Error";
    return "respuesta";*/
}*/
void main() {
  emitirNumeros().listen((event) {
    print("Stream $event");
  });
}

/*Stream<int> emitirNumeros() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}*/
Stream<int> emitirNumeros() async* {
  final valorEmitir = [1, 2, 3, 4, 5];
  for (int i in valorEmitir) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
  /*return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);*/
}
