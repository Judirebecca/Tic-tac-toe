import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:xoxo/homepage/homepagemodel.dart';

/* Create a class homepageVM that extends from the class homepagemodel */

// class homepageVM extends homepagemodel{
class HomepageVM extends homepagemodel {
  HomepageVM() {
    collectionOfvalues = ObservableList.of([
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ]);
  }

  void tappeditem(int index) {
    if (collectionOfvalues[index] == "") {
      if (iscrossassigned) {
        collectionOfvalues[index] = "circle";
        iscrossassigned = false;
      } else {
        collectionOfvalues[index] = "cross";
        iscrossassigned = true;
      }
    }
    winnerstatus();
  }

  void reset() {
    for (var i = 0; i < collectionOfvalues.length; i++) {
      collectionOfvalues[i] = "";
    }
    winner = "";
  }

  winnerstatus() async {
    // Checking the first row
    if (collectionOfvalues[0] == collectionOfvalues[1] &&
        collectionOfvalues[1] == collectionOfvalues[2] &&
        collectionOfvalues[2] != "") {
      winner = "${collectionOfvalues[0]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // Checking the second row
    else if (collectionOfvalues[3] == collectionOfvalues[4] &&
        collectionOfvalues[4] == collectionOfvalues[5] &&
        collectionOfvalues[5] != "") {
      winner = "${collectionOfvalues[3]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // checking the third row
    else if (collectionOfvalues[6] == collectionOfvalues[7] &&
        collectionOfvalues[7] == collectionOfvalues[8] &&
        collectionOfvalues[8] != "") {
      winner = "${collectionOfvalues[6]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    //checking the first column
    else if (collectionOfvalues[0] == collectionOfvalues[3] &&
        collectionOfvalues[3] == collectionOfvalues[6] &&
        collectionOfvalues[6] != "") {
      winner = "${collectionOfvalues[0]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // checking the second column
    else if (collectionOfvalues[1] == collectionOfvalues[4] &&
        collectionOfvalues[4] == collectionOfvalues[7] &&
        collectionOfvalues[7] != "") {
      winner = "${collectionOfvalues[1]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // checking the third column
    else if (collectionOfvalues[2] == collectionOfvalues[5] &&
        collectionOfvalues[5] == collectionOfvalues[8] &&
        collectionOfvalues[8] != "") {
      winner = "${collectionOfvalues[2]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // checking the diagonals
    else if (collectionOfvalues[0] == collectionOfvalues[4] &&
        collectionOfvalues[4] == collectionOfvalues[8] &&
        collectionOfvalues[4] != "") {
      winner = "${collectionOfvalues[0]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    } else if (collectionOfvalues[2] == collectionOfvalues[4] &&
        collectionOfvalues[4] == collectionOfvalues[6] &&
        collectionOfvalues[4] != "") {
      winner = "${collectionOfvalues[2]} is winner";
      a = true;
      await Future.delayed(const Duration(seconds: 03));
      if (a == true) {
        reset();
      }
      return;
    }
    // Draw condition 
    else if (collectionOfvalues[0] != "" &&
        collectionOfvalues[1] != "" &&
        collectionOfvalues[2] != "" &&
        collectionOfvalues[3] != "" &&
        collectionOfvalues[4] != "" &&
        collectionOfvalues[5] != "" &&
        collectionOfvalues[6] != "" &&
        collectionOfvalues[7] != "" &&
        collectionOfvalues[8] != "") {
      winner = "DRAW";
      reset();
    }
    a = false;
  }
}
