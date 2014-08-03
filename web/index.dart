import 'dart:html';
@MirrorsUsed(targets: const [InputElement], override: '*')
import 'dart:mirrors' show MirrorsUsed;
import 'package:reflection_test/periodical_observer.dart';

void main() {
  new PeriodicalObserver(querySelector('input'), 'value');
}
