@JS()
library ladda;

import 'package:js/js.dart';

@JS('Ladda')
class Ladda {
  external static dynamic create([String query]);

  external start();
  external stop();
}
