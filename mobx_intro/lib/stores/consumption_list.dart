import 'package:mobx/mobx.dart';

part 'consumption_list.g.dart';

class ConsumptionList = _ConsumptionList with _$ConsumptionList;

abstract class _ConsumptionList with Store {
  @observable
  ObservableList<double> list = ObservableList<double>();

  @action
  void addConsumption(double value) {
    list.add(value);
  }

  @computed
  String get average => list.isEmpty
      ? '0'
      : (list.reduce((a, b) => a + b) / list.length).toStringAsFixed(2);

  @action
  void removeConsumption(double value) {
    list.remove(value);
  }

  @action
  void clear() => list.clear();
}
