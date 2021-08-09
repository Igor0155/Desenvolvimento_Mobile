import 'dart:io';

main() {
  stdout.write('\nInsira uma letra: \n');
  String letra = stdin.readLineSync()!;
  letra = letra.toLowerCase();

  if (letra == 'a' ||
      letra == 'e' ||
      letra == 'i' ||
      letra == 'o' ||
      letra == 'u') {
    print('\nLetra digitada e uma vogal\n');
  } else if (letra == 'b' ||
      letra == 'c' ||
      letra == 'd' ||
      letra == 'f' ||
      letra == 'g' ||
      letra == 'h' ||
      letra == 'j' ||
      letra == 'k' ||
      letra == 'l' ||
      letra == 'm' ||
      letra == 'n' ||
      letra == 'p' ||
      letra == 'q' ||
      letra == 'r' ||
      letra == 's' ||
      letra == 't' ||
      letra == 'v' ||
      letra == 'w' ||
      letra == 'x' ||
      letra == 'y' ||
      letra == 'z') {
    print('\nLetra digitada e uma Consoante\n');
  }
}
