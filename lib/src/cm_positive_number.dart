import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';
import 'dart:html';

@Directive(selector: '[ngModel][cmPositive]',
    providers: [NgModel],
    host: {'(ngModelChange)': r'onInputChange($event)'})
/**
 * Обеспечивает только положительные значения в поле
 */ class CmPositiveNumberDirective {

  final NgModel _ngModel;

  CmPositiveNumberDirective(this._ngModel) {
  }

  onInputChange(dynamic event) {
    if (event is double) {
      var doubleValue = event.toDouble();

      if (doubleValue < 0) {
        doubleValue = doubleValue * -1;
        _ngModel.valueAccessor.writeValue(doubleValue);
      }
    }
  }
}