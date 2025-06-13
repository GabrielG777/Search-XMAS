import 'package:search_xmas/controller/achar_xmas_controller.dart';
import 'package:search_xmas/repository/arquivo_repository.dart';

void main() async {
  final repo = ArquivoRepository();
  final controller = AcharXmasController();

  List<List<String>> matriz = await repo.lerMatrizDeArquivo(
    'D:\\Desktop\\gabriel\\Search-XMAS\\assets\\input.txt',
  );

  int total = controller.total(matriz);
  print('Total encontrado de XMAS = $total');
}
