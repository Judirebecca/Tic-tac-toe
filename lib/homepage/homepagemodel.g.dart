// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepagemodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$homepagemodel on _homepagemodelBase, Store {
  late final _$winnerAtom =
      Atom(name: '_homepagemodelBase.winner', context: context);

  @override
  String get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(String value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_homepagemodelBaseActionController =
      ActionController(name: '_homepagemodelBase', context: context);

  @override
  void setwinner({required dynamic winner}) {
    final _$actionInfo = _$_homepagemodelBaseActionController.startAction(
        name: '_homepagemodelBase.setwinner');
    try {
      return super.setwinner(winner: winner);
    } finally {
      _$_homepagemodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
winner: ${winner}
    ''';
  }
}
