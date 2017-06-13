import 'dart:html';
import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular2/core.dart';
import 'ladda.dart';

@Directive(selector: '[cmLoadingBtn]')
class CmLoadingBtnDirective {
  @Input('cmLoadingBtn')
  dynamic callback;

  Ladda btn = null;

  final ElementRef _el;
  CmLoadingBtnDirective(this._el) {
    var btnElement = (_el.nativeElement as ButtonElement);

    if (!btnElement.classes.contains('ladda-button'))
      btnElement.classes.add('ladda-button');

    if (!btnElement.attributes.containsKey('data-style'))
      btnElement.attributes['data-style'] = 'zoom-in';

    btn = Ladda.create(_el.nativeElement);
  }

  @HostListener('click', [r'$event'])
  onClick(Event e) async {
    e.preventDefault();
    try {
      btn.start();
      await callback();
    } finally {
      btn.stop();
    }
  }
}
