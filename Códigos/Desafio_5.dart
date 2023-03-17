import 'dart:io';
void main(List<String> args) {
  var entrada = stdin.readLineSync()!;
  var reversa = '';
  
  for(var i = (entrada.length - 1); i >= 0; i--){
    reversa += entrada[i];
  }

  print(reversa);
}