import 'dart:io';

class ArquivoRepository {

  Future<List<List<String>>> lerMatrizDeArquivo(String path) async {
    String conteudo = await File(path).readAsString();
    final linhas = conteudo.trim().split('\n');
    return linhas.map((linha) => linha.trim().split('')).toList();
  }

}
