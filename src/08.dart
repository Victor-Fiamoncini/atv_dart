import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe sua altura (ex: 1.74): ');
    final height = double.parse(stdin.readLineSync().toString());

    stdout.write('Informe seu sexo (m ou f): ');
    final gender = stdin.readLineSync().toString();

    if (gender == 'm') {
      print('Peso ideal: ${(72.7 * height) - 58}');

      return;
    } else if (gender == 'f') {
      print('Peso ideal: ${(62.1 * height) - 44.7}');

      return;
    }

    throw new Exception('O sexo informado é inválido');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
