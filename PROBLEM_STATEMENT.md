# Chocolate

O Roger leva uma vida muito saudável, mas nem sempre foi assim. Ele é apaixonado por chocolate e houve uma época em que não conseguia se controlar; particularmente, ele adora M&M's e comeria potes inteiros de uma vez. Na sua última volta ao mundo, ele comprou M&M's de todos os tipos que encontrou, como, por exemplo, chocolate, café, polvo e grilo. Antigamente, ele dividiria uma pequena parte com o pessoal da Quero e comeria todo o resto em um final de semana. Hoje em dia, para comer menos, ele leva um pouco mais para o time e, para não fugir tanto da dieta, demora meses para comer todos os M&M's.

Para facilitar o armazenamento, ele criou o M&M's Storage. O M&M's Storage possui N compartimentos com uma capacidade arbitrária cada um. Como o Roger estava com pressa de abrir os seus novos M&M's, os M sabores diferentes acabaram sendo misturados nos compartimentos do M&M's Storage. O M&M's Storage possui uma tecnologia muito avançada e consegue dizer quantos M&M's de cada sabor há no compartimento, mas o Roger ainda deve pegá-los manualmente. Além disso, para ajudar na dieta, o M&M's Storage foi programado para abrir apenas um compartimento aleatório por dia e permite que o Roger pegue apenas um M&M cada vez que um compartimento foi aberto. Agora o Roger está com vontade de comer um sabor específico e quer saber qual a chance de retirar o sabor que gostaria, antes que qualquer um dos compartimentos abra. Ajude-o a manter a sua dieta!

## Entrada

A entrada é composta de vários casos de teste, a primeira linha da entrada contém um único inteiro T que indica quantos casos de teste seguem. Cada caso de teste começa com dois inteiros, N e M (1 <= M <= N <= 10ˆ6), que indicam, respectivamente, a quantidade de compartimentos e a quantidade de sabores diferentes de M&M's. As próximas N linhas da entrada contém M inteiros; o enésimo inteiro representa a quantidade de M&M's do sabor n no compartimento. Na última linha de um caso de teste, haverá um inteiro Q (1 <= Q < M), que é o sabor que o Roger está com vontade de comer.

## Saída

Para cada caso de teste, imprima um número real P (0 <= P <= 1), de precisão dupla, com duas casas decimais, indicando a chance do Roger retirar um M&M do sabor desejado.

| Entrada        | Saída |
|----------------|:-----:|
| 2              |  0.50 |
| 2 2            |  0.15 |
| 50 50          |       |
| 50 50          |       |
| 1              |       |
| 6 5            |       |
| 7 8 9 7 6      |       |
| 7 8 9 10 10    |       |
| 10 10 4 6 8    |       |
| 10 15 16 12 11 |       |
| 20 10 5 7 9    |       |
| 30 30 1 1 1    |       |
| 4              |       |
