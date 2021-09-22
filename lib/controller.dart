
// ignore_for_file: file_names

import 'package:exercicios_c214_lab/Animal.dart';
import 'package:flutter/cupertino.dart';


class Controller extends ChangeNotifier {

  Controller(this.animal);

  final IAnimal animal;

  String nome = '';
  String som = '';

  void getNome(int id){
  nome = animal.getNome(id);
  notifyListeners();

  }

  void getSom(int id) async {
   som = animal.getSom(id);
   notifyListeners();
  }

}