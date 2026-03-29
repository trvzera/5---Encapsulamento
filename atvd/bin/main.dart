import 'package:atvd/conteudo.dart' as atvd;
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  File arquivo = File('dados.json');
  String conteudo = arquivo.readAsStringSync();
  Map<String, dynamic> mapaFormatado = jsonDecode(conteudo);
  print(mapaFormatado);
  atvd.Filme filme1 = atvd.Filme(mapaFormatado['titulo']);

  try {
    filme1.validarClassificacao = mapaFormatado['classificacao'];
  } catch (e) {
    print('Erro gerado: $e');
  }
}
