// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumption_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConsumptionList on _ConsumptionList, Store {
  Computed<String>? _$averageComputed;

  @override
  String get average =>
      (_$averageComputed ??= Computed<String>(() => super.average,
              name: '_ConsumptionList.average'))
          .value;

  final _$listAtom = Atom(name: '_ConsumptionList.list');

  @override
  ObservableList<double> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<double> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_ConsumptionListActionController =
      ActionController(name: '_ConsumptionList');

  @override
  void addConsumption(double value) {
    final _$actionInfo = _$_ConsumptionListActionController.startAction(
        name: '_ConsumptionList.addConsumption');
    try {
      return super.addConsumption(value);
    } finally {
      _$_ConsumptionListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeConsumption(double value) {
    final _$actionInfo = _$_ConsumptionListActionController.startAction(
        name: '_ConsumptionList.removeConsumption');
    try {
      return super.removeConsumption(value);
    } finally {
      _$_ConsumptionListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_ConsumptionListActionController.startAction(
        name: '_ConsumptionList.clear');
    try {
      return super.clear();
    } finally {
      _$_ConsumptionListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
average: ${average}
    ''';
  }
}
