import 'package:test/test.dart';

void main (){

const idade = 20;



test('Idade é par ?', () {

  expect(verificaIdadePar(idade), equals("idade Par"));
  
});


test('Verifica validade do dinheiro', () {

const dinheiro = 10.0;
assert(dinheiro != 0 && dinheiro >=0);

});



test('Calcular desconto max', () {
  const preco = 1000.0;
  const descontoPorcentagem = 10.0;

assert(calculaDescontoProduto(preco, descontoPorcentagem) <= 300);

});

}



double calculaDescontoProduto(double preco, double descontoPorcentagem)
{

return (preco * descontoPorcentagem /100);  

}

String verificaIdadePar(int idade){
   if(idade % 2 == 0){
      return "idade Par";
   }
   return "idade Ímpar";
}