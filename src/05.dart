import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe a primeira nota: ');
    final first_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe a segunda nota: ');
    final second_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe a terceira nota: ');
    final third_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe a quarta nota: ');
    final fourth_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe o primeiro peso: ');
    final first_weight = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe o segundo peso: ');
    final second_weight = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe o terceiro peso: ');
    final third_weight = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe o quarto peso: ');
    final fourth_weight = num.parse(stdin.readLineSync().toString());

    final student_values = [
      first_value,
      second_value,
      third_value,
      fourth_value,
    ];

    final weights = [
      first_weight,
      second_weight,
      third_weight,
      fourth_weight,
    ];

    num student_media = 0;

    student_values.asMap().forEach((index, student_value) =>
        (student_media += student_value * weights[index]));

    stdout.write('Média final: ${student_media / weights.length}');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
