import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'homepagemodel.g.dart';

class homepagemodel = _homepagemodelBase with _$homepagemodel;

abstract class _homepagemodelBase with Store {
  // Declare a variable count and set its value to zero
  ObservableList<String> collectionOfvalues = ObservableList();

  bool iscrossassigned = false;

  bool a = false;
  void setstatus({required bool a})=> this.a = a;

  @observable
  var winner = "";
   void setwinner({required var winner})=> this.winner = winner;

  
 
}
