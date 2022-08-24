import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe um número: ');
    final number = num.parse(stdin.readLineSync().toString());

    stdout.write('Número informado: $number e seu antecessor: ${number - 1}');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
