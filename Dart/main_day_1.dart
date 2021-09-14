import 'dart:math';

main(List<String> args) {
  // Variables
  final name = "Teste nome"; // Inferência (Tipo "String")
  int yearsOld = 21;
  double price = 2.89;
  bool isValidValue = true;

  print(name.runtimeType);
  print(yearsOld.runtimeType);
  print(price.runtimeType);
  print(isValidValue.runtimeType);

  // Listas
  List integerValues = [1, 2, 3]; // Inferência dos vaalores (Tipo "dynamic")
  List<double> doubleValues = [1, 2, 3];
  print(integerValues.runtimeType);
  print(doubleValues.runtimeType);

  // Final e Const

  //// Pode ser definido em tempo de execução/compilação
  final double price2 = Random().nextDouble();

  //// Só pode ser definido em tempo de compilação
  //// Esta linha gera erro, devido o valor ser gerado em tempo de compilação
  //// (Ser um valor randomico)
  // const double price3 = Random().nextDouble();

  print(price2);

  // Condicionais
  String? title = null; // Permite atribuir a variável title o valor null

  // Converte uma variável do tipo String? para String
  String value = title ?? "Teste";

  getText(text: value);

  // Estrutura de controle
  if (20 == 20) {}
  print(20 == 20 ? "São iguais" : "São diferentes");
  switch (20) {
    case 20:
      print("O valor é 20");
      break;
    default:
      print("O valor não é 20");
      break; // No ultimo comando o break é opcional.
  }

  // Estrutura de repetição
  for (int i = 0; i < 5; i++) {
    print("FOR: I= $i");
  }
  for (double val in [9.2, 5.6, 3, 6.5, 8]) {
    print("FOREACH 1: Valor atual = $val");
  }
  ["Teste", "Teste 2", "Teste 3"].forEach((currentValue) {
    print("FOREACH 2: Valor atual = $currentValue");
  });

  int i = 0;
  while (i < 5) {
    print("WHILE I = $i");
    i++;
  }

  // Neste caso (do...while) é importante observar que mesmo a condição sendo false
  // o do while ainda executa uma vez.
  i = 7;
  do {
    print("DO WHILE: I = $i");
  } while (i < 7);
}

// Não permite passar uma variável String que possa receber o valor null por parâmetro
void getText({
  String text = "",
}) {} // As chaves faz com que o parâmetro seja opçional e nomeado
