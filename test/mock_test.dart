// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import
import 'package:exercicios_c214_lab/Animal.dart';
import 'package:exercicios_c214_lab/Controller.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';



class MockitoAnimal extends Mock implements IAnimal {}

void main() {
  

MockitoAnimal mockitoAnimal = MockitoAnimal();
Controller controller = Controller(mockitoAnimal);


test('Quando o id do animal for 1', () {

  when(mockitoAnimal.getNome(1)).thenReturn("Macaco");

  controller.getNome(1);
  expect(controller.nome, "Macaco");

  when(mockitoAnimal.getSom(1)).thenReturn("UhUhAhAh");

  controller.getSom(1);
  expect(controller.som, "UhUhAhAh");


});





}

