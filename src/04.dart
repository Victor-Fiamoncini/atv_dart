import 'dart:io';

void main(List<String> args) {
  const weights = [2, 3, 5];

  try {
    stdout.write('Informe a primeira nota: ');
    final first_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe a segunda nota: ');
    final second_value = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe a terceira nota: ');
    final third_value = num.parse(stdin.readLineSync().toString());

    final student_values = [first_value, second_value, third_value];

    num student_media = 0;

    student_values.asMap().forEach((index, student_value) =>
        (student_media += student_value * weights[index]));

    stdout.write('Média final: ${student_media / 10}');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
