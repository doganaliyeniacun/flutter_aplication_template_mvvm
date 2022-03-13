// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TestViewModel on _TestViewModelBase, Store {
  final _$nameAtom = Atom(name: '_TestViewModelBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$_TestViewModelBaseActionController =
      ActionController(name: '_TestViewModelBase');

  @override
  void welcome() {
    final _$actionInfo = _$_TestViewModelBaseActionController.startAction(
        name: '_TestViewModelBase.welcome');
    try {
      return super.welcome();
    } finally {
      _$_TestViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name}
    ''';
  }
}
