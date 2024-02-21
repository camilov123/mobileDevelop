import 'dart:math';

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

anagrama(String string1, String string2) {
  var word1 = string1.toLowerCase().split("");
  word1.sort();
  var word2 = string2.toLowerCase().split("");
  word2.sort();
  if (word1.join() != word2.join()) {
    print(string1 + " is has not the same letter to " + string2);
  } else {
    print(string1 + " is has the same letter to " + string2);
  }
}

void main() {
  //temporal(0);

  anagrama("castor", "castro");

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
  List<int> temp = [1, 5, 3, 10, 2];
  print("maximum ${temp.reduce(max)}");
  print("minimum ${temp.reduce(min)}");
}
