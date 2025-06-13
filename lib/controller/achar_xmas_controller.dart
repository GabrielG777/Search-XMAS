class AcharXmasController {
  String palavra = "XMAS";

  int buscarHorizontalEsqDir(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = 0; i < linhas; i++) {
      for (int j = 0; j <= colunas - palavra.length; j++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i][j + k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) {
          contador++;
        }
      }
    }
    return contador;
  }

  int buscarHorizontalDirEsq(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = 0; i < linhas; i++) {
      for (int j = palavra.length - 1; j < colunas; j++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i][j - k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int buscarVerticalCimaBaixo(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int j = 0; j < colunas; j++) {
      for (int i = 0; i <= linhas - palavra.length; i++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i + k][j] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int buscarVerticalBaixoCima(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int j = 0; j < colunas; j++) {
      for (int i = linhas - 1; i >= palavra.length - 1; i--) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i - k][j] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int buscarDiagonalPrincipal(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = 0; i <= linhas - palavra.length; i++) {
      for (int j = 0; j <= colunas - palavra.length; j++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i + k][j + k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int buscarDiagonalPrincipalInvertida(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = linhas - 1; i >= palavra.length - 1; i--) {
      for (int j = colunas - 1; j >= palavra.length - 1; j--) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i - k][j - k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

 int buscarDiagonalSecundaria(List<List<String>> matriz) {
     int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = 0; i <= linhas - palavra.length; i++) {
      for (int j = palavra.length - 1; j < colunas; j++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i + k][j - k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int buscarDiagonalSecundariaInvertida(List<List<String>> matriz) {
    int contador = 0;
    int linhas = matriz.length;
    int colunas = matriz[0].length;

    for (int i = linhas - 1; i >= palavra.length - 1; i--) {
      for (int j = 0; j <= colunas - palavra.length; j++) {
        bool achou = true;
        for (int k = 0; k < palavra.length; k++) {
          if (matriz[i - k][j + k] != palavra[k]) {
            achou = false;
            break;
          }
        }
        if (achou) contador++;
      }
    }
    return contador;
  }

  int total(List<List<String>> matriz) {
    int total = 0;
    total += buscarHorizontalEsqDir(matriz);
    total += buscarHorizontalDirEsq(matriz);
    total += buscarVerticalCimaBaixo(matriz);
    total += buscarVerticalBaixoCima(matriz);
    total += buscarDiagonalPrincipal(matriz);
    total += buscarDiagonalPrincipalInvertida(matriz);
    total += buscarDiagonalSecundaria(matriz);
    total += buscarDiagonalSecundariaInvertida(matriz);
    return total;
  }
}
