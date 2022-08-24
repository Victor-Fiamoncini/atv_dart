import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe o primeiro valor inteiro: ');
    final first_integer_value = int.parse(stdin.readLineSync().toString());

    stdout.write('Informe o segundo valor inteiro: ');
    final second_integer_value = int.parse(stdin.readLineSync().toString());

    stdout.write('Informe um valor decimal: ');
    final float_value = double.parse(stdin.readLineSync().toString());

    print(
      'Produto do dobro do primeiro com metade do segundo: ${(first_integer_value * 2) * (second_integer_value / 2)}',
    );

    print(
      'Soma do triplo do primeiro com o terceiro: ${(first_integer_value * 3) + float_value}',
    );
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
