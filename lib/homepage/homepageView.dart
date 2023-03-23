import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'homepageVM.dart';

class homepageView extends StatelessWidget {
  homepageView({super.key});
  final HomepageVM _homepage = HomepageVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("XOXO"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 350,
                  height: 350,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) =>
                        Observer(builder: (context) {
                      return IconButton(
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple) ),
                          onPressed: ()=> _homepage.tappeditem(index),
                          icon: _homepage.collectionOfvalues[index] == "" ? const Icon(Icons.edit, size: 30, color: Colors.white,) : _homepage.collectionOfvalues[index] == "cross" ?const Icon(Icons.close, size: 30, color: Colors.white,):const Icon(Icons.circle, size: 30, color: Colors.white,));
                    }),
                  ),
                ),
              ),
              const SizedBox(height :20),
              Observer(
                builder: (context) {
                  return Text(_homepage.winner, style: const TextStyle(color:Colors.black, fontSize: 20),);
                }
              ),
              Column(children: [
                Observer(
                  builder: (context) {         
                    return ElevatedButton(
                      onPressed: _homepage.reset,
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.purple)),
                      child: const Text(
                        "Reset",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    );
                  }
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Try your luck",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                const SizedBox(
                  height: 20,
                ),
              ])
            ]));
  }
}
