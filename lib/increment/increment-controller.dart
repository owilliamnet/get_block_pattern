import 'package:bloc_pattern/bloc_pattern.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class IncrementController implements BlocBase {

  //fluxo da variavel counter
  var _counterController = BehaviorSubject<int>(seedValue: 0);
  Stream<int> get outCounter => _counterController.stream;
  Sink<int> get inCounter => _counterController.sink;


  void increment(){ 
    inCounter.add(++_counterController.value);
  }

  @override
  void dispose() {
    _counterController.close();
  }
}
