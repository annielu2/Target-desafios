import 'dart:io';

bool fibonacci(num){
  int penult = 0, ult = 1, aux;
  while(ult < num){
    aux = penult;
    penult = ult;
    ult += aux;
  }

  return(num == ult || num == penult);
}
void main(List<String> args) {
  String entrada = stdin.readLineSync()!;
  int numero = int.parse(entrada);
  if(fibonacci(numero)){
    print("O número $numero pertence à sequência de Fibonacci");
  } else{
    print("O número $numero não pertence à sequência de Fibonacci");
  }
}