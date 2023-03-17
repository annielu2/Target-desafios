import 'dart:core';
void main(List<String> args) {
  var faturamentos = [
    {'estado' : 'SP', 'valor' : 67836.43},
    {'estado' : 'RJ', 'valor' : 36678.66},
    {'estado' : 'MG', 'valor' : 29229.88},
    {'estado' : 'ES', 'valor' : 27165.48},
    {'estado' : 'Outros', 'valor' : 19849.53},
  ];

  double total = faturamentos.map((faturamento) => faturamento['valor'])
  .map((faturamento) => (faturamento as double))
  .reduce((t, a) => t + a);
  print(total);


  for(var f in faturamentos){
    double valor = (f['valor'] as double)/total;
    print("O estado de ${f['estado']} possui uma contribuição de ${(valor*100).toStringAsFixed(2)} % do total");
  }
  
  
}