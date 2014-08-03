library reflection_test.periodical_observer;

import 'dart:async';

/// 1秒ごとに特定オブジェクトの value プロパティをチェックして、
/// 変化があったら console に出力するクラス。
class PeriodicalObserver {
  Object _value;

  PeriodicalObserver(Object target) {
    new Timer.periodic(new Duration(seconds: 1), (_) {
      var v = (target as dynamic).value;
      if (v == _value) return;
      print(v);
      _value = v;
    });
  }
}
