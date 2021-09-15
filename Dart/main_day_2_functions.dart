// {} -> torna os parâmetros opcionais e nomeados
//required -> torna os parametros obrigatórios, porém, os mantem nomeados.
// {int secondValue = 2} -> define um valor padrão ao parâmetro secondValue
int sumTwoValues({required int firstValue, int secondValue = 2}) {
  if (firstValue < 0) {
    return secondValue;
  }
  return firstValue + secondValue;
}

void printWord(String val) => print(val);

double toExecuteWithTwoValues(
  double a,
  double b,
  double Function(double, double) function,
) {
  return function(a, b);
}

main(List<String> args) {
  int res = sumTwoValues(firstValue: 1, secondValue: 2);

  print(res);

  double res1 = toExecuteWithTwoValues(15, 3, (p0, p1) => p0 / p1);
  double res2 = toExecuteWithTwoValues(5, 7, (p0, p1) => p0 * p1);

  print("Result 1: $res1, Result 2: $res2");

  printWord("Word");
}
