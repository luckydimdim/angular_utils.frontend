import 'dart:core';

import 'package:angular2/core.dart';
import 'package:master_layout/master_layout_component.dart';
import 'package:angular_utils/pipes.dart';

@Component(selector: 'app')
@View(templateUrl: 'app_component.html', directives: const [MasterLayoutComponent], pipes: const [CmFormatMoneyPipe])
class AppComponent {

  AppComponent() {

  }

}
