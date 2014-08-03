library reflection_test.periodical_observer;

import 'dart:async';
import 'dart:mirrors';

/// 1秒ごとに特定オブジェクトの特定プロパティをチェックして、
/// 変化があったら console に出力するクラス。
class PeriodicalObserver {
  Object _value;

  PeriodicalObserver(Object target, String propertyName) {
    final n = new Symbol(propertyName);
    new Timer.periodic(new Duration(seconds: 1), (_) {
      var v = readProperty(target, n);
      if (v == _value) return;
      print(v);
      _value = v;
    });
  }
}

Object readProperty(Object object, Symbol name) {
  return reflect(object).getField(name).reflectee;
}
