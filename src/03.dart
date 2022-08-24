import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe o salário: ');
    final wage = num.parse(stdin.readLineSync().toString());

    stdout.write('Informe o percentual de reajuste: ');
    final readjustment_percentage = num.parse(stdin.readLineSync().toString());

    final new_wage = wage + (wage / 100) * readjustment_percentage;

    stdout.write('Salário com percentual de ajuste: $new_wage');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
