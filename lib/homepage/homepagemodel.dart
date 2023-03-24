import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'homepagemodel.g.dart';

class homepagemodel = _homepagemodelBase with _$homepagemodel;

abstract class _homepagemodelBase with Store {
  // Declare a variable count and set its value to zero
  @observable
  List<String> collectionOfvalues = [];

  @action
  void setvalue({required List<String> collectionOfvalues})=> this.collectionOfvalues = collectionOfvalues;

  bool iscrossassigned = false;

  bool a = false;
  
  void setstatus({required bool a})=> this.a = a;

  @observable
  var winner = "";
  
  @action
   void setwinner({required var winner})=> this.winner = winner;

  
 
}
