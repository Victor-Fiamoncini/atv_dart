import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe o quanto você ganha por hora: ');
    final hour_value = double.parse(stdin.readLineSync().toString());

    stdout.write('Informe o número de horas trabalhadas por mês: ');
    final hours_worked = double.parse(stdin.readLineSync().toString());

    final total_salary = hour_value * hours_worked;
    final irpf = (total_salary / 100) * 11;
    final inss = (total_salary / 100) * 8;
    final sindicate = (total_salary / 100) * 5;
    final liquid_salary = total_salary - irpf - inss - sindicate;

    print('Salário bruto: $total_salary');
    print('IRPF: $irpf');
    print('INSS: $inss');
    print('Sindicato: $sindicate');
    print('Salário líquido: $liquid_salary');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
