import 'package:atvd/conteudo.dart' as atvd;
import 'dart:convert';
import 'dart:io';

import '../lib/conteudo.dart';

void main(List<String> arguments) {
  List<Conteudo> catalogo = [];

  final arquivo = File('./dados.json');

  if (arquivo.existsSync()) {
    List<dynamic> dados = jsonDecode(arquivo.readAsStringSync());
    for (var item in dados) {
      var filme = Filme(item['titular']);
      filme.validarClassificacao = item['saldo'];
      catalogo.add(filme);
    }
    stdout.write('ID do Novo Filme: ');
    String id = stdin.readLineSync()!;
    stdout.write('Nome do Novo Filme: ');
    String nome = stdin.readLineSync()!;
    stdout.write('Classificação do Novo Filme: ');
    String classificacaoInput = stdin.readLineSync()!;
    int classificacao = int.parse(classificacaoInput);
    for (var nome in dados)
      if (id == id) {
        
      }
    catalogo.add(Filme(id));
    catalogo.add(Filme(nome));
    catalogo.add(Filme(classificacaoInput));


    print('✅ Conta de $nome criada com sucesso!');

  }
}
