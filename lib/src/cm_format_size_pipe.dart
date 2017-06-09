import 'package:angular2/angular2.dart';
import 'package:intl/intl.dart';

@Pipe('cmFormatSize')
/**
 * Пайпа для преобразования размера файла
 */
class CmFormatSizePipe extends PipeTransform {
  String transform(int value) => parseSize(value);

  String parseSize(int value) {
    int decimalPlaces = 1;

    var sizeSuffixes = [ 'байт', 'Кб', 'Мб', 'Гб', 'Тб', 'Пб', 'Eb', 'Zb', 'Yb' ];

    if (value < 0) {
      return "-";
    }

    int i = 0;
    double dValue = value.toDouble();



    while (dValue.round() >= 1000)
    {
      dValue /= 1024;
      i++;
    }

    final numberFormat = new NumberFormat('0.0', 'ru_RU');  // FIXME: нехорошо локаль хардкодить
    return '${numberFormat.format(dValue)} ${sizeSuffixes[i]}';
  }
}