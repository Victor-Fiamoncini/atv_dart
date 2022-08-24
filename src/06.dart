import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe uma temperatura em Farenheit: ');
    final farenheit_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Temperatura em Celsius: ${5 * (farenheit_value - 32) / 9}');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
