import 'package:angular2/angular2.dart';
import 'package:intl/intl.dart';

@Pipe('cmFormatRole')
/**
 * Пайпа для преобразования ролей в удобный вид
 */
class CmFormatRolePipe extends PipeTransform {
  String transform(List<String> values) {
    List<String> result = new List<String>();
    ;

    for (String value in values) {
      value = value.toUpperCase();
      switch (value) {
        case 'CONTRACTOR':
          result.add('Подрядчик');
          break;
        case 'CUSTOMER':
          result.add('Заказчик');
          break;
        case 'ADMINISTRATOR':
          result.add('Администратор');
          break;
      }
    }

    return result.join(", ");
  }
}
