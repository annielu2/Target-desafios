import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

void main(List<String> args) async{
  var input = await File("../Arquivos/dados.json").readAsString();
  var faturamentos = jsonDecode(input);

  double menorValor = faturamentos[0]['valor'], maiorValor = 0, total = 0;
  int dias = 0;

  for (var faturamento in faturamentos){
    double valor = faturamento['valor'];
    if(valor > 0){
      dias++;
      if(valor > maiorValor){maiorValor = valor;}
      if(valor < menorValor){menorValor = valor;}
      total += valor;
    }
  }

  var superiorMedia = (faturamentos.map((faturamento) => faturamento['valor'],)
  .map((valor) => (valor as double),)
  .where((valor) => valor >= (total/dias) as bool)).length;

  


  print("O menor valor de faturamento do mês foi: $menorValor");
  print("O maior valor de faturamento do mês foi: $maiorValor");
  print("São $superiorMedia dias em que o faturamento superou a média.");
}