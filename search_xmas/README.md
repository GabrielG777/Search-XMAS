# 🔍 Desafio XMAS - Verificação de palavras em matriz

Este projeto tem como objetivo **ler um arquivo `.txt`**, processar o conteúdo em forma de **matriz de caracteres**, e **identificar quantas vezes a palavra `XMAS` aparece**, considerando diversas direções de leitura.

---

## 📄 Enunciado do Desafio

Dado um arquivo `.txt` contendo uma matriz de letras, o sistema deve contar quantas vezes a palavra **"XMAS"** aparece, nas seguintes direções:

- Esquerda ➡ Direita
- Direita ➡ Esquerda
- Cima ⬆ Baixo
- Baixo ⬇ Cima
- Diagonal ↘ (cima-esquerda ➝ baixo-direita)
- Diagonal ↖ (baixo-direita ➝ cima-esquerda)
- Diagonal ↙ (cima-direita ➝ baixo-esquerda)
- Diagonal ↗ (baixo-esquerda ➝ cima-direita)

---

## 🧠 Lógica de Implementação

1. **Conversão do texto em matriz**  
   O conteúdo do `.txt` é transformado em uma matriz de caracteres, facilitando o acesso por linha e coluna.

2. **Funções de busca**  
   Foram criadas **9 funções** principais no arquivo `func_acharXmas.dart`:
   - 8 funções percorrem a matriz em cada uma das direções exigidas.
   - 1 função `acharXmasTotal()` soma os resultados de todas e retorna o total de ocorrências.

3. **Validação com gabarito**  
   O desafio fornece uma matriz de teste com gabarito conhecido (18 ocorrências). Esta matriz foi usada para validar todas as funções antes da aplicação real sobre o `.txt`.

4. **Leitura de arquivos**  
   Foi criada uma função específica na pasta `repository` para:
   - Ler o conteúdo do arquivo `.txt`
   - Converter o conteúdo em matriz

---

## 🧪 Testes e Verificações

O retorno das funções foi testado usando o gabarito do desafio. Após validar que as funções estavam retornando corretamente o valor 18, a leitura do arquivo `.txt` foi integrada com sucesso ao sistema.

---

## Facilidade e Dificuldades
Minha maior dificuldade foi aplicar a logica de percorrer linhas, colunas, e só dai verificar letra por letra, dentro do FOR, foi um desafio maneiro.
Tive facilidade em organizar as funções dentro de suas devidas pastas, a arquitetura foi a parte mais tranquila de se desenvolver, tentei simplificar para que ficasse facil de entender

## Oque utilizei para me auxiliar:
Antes de tudo, traduzi o enunciado, entendi a logica, e coloquei a mão na massa. Utilizei esse cara "https://api.dart.dev/dart-io/File-class.html" para saber qual Biblioteca usar para acessar os meus arquivos.

## Utilizei o CHATGPT para as seguintes coisas:
 - Edição do readme.md;
 - Debug (verificação de erros);
 - Tradução do enunciado;

## 📁 Estrutura de Pastas

```shell
bin/
└── main.dart                      # Função principal do programa

lib/
├── controller/
│   └── achar_xmas_controller.dart  # Controlador com funções de contagem
│
├── repository/
│   └── arquivo_repository.dart     # Leitura e conversão de .txt para matriz

