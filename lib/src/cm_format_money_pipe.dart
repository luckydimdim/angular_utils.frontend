import 'package:angular2/angular2.dart';
import 'package:intl/intl.dart';

@Pipe('cmFormatMoney')
/**
 * Пайпа для преобразования числовых значений к денежному формату
 */
class CmFormatMoneyPipe extends PipeTransform {
  final formatter = new NumberFormat('###,###.00', 'ru_RU');

  String transform(num value) => '${formatter.format(value)}';
}
