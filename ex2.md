# As mais importantes chaves do compilador GCC.

O uso de chaves é algo importante para todo programador que deseja poder compilar arquivos de forma mais eficiente, rápida e prática. A segue a seguir as, na minha 
opinião, as 10 chaves mais importantes do compilador GCC.

1. A chave mais importante do GCC é a -o, pois sem ela não seria possível executar nenhum código. Ela é usada para indicar qual deve ser o arquivo executável e qual é o arquivo fonte. Ela deve ser sempre colocada antes do executável, principalmente se ouver mais de um arquivo fonte.

2. A biblioteca math.h é praticamente essencial em muitos programas em C, por isso ela tem sua própia chave, a -lm. Basta colocar ela depois do arquivo fonte e seu programa vai ser compilado com a biblioteca math.h.

3. Otimização de código é algo importantíssimo em programas mais complexos, por isso todo programador deve se familiarizar com a chave -O. Ela vem com diversas 
variações, de O1 até O3, Os e Ofast. As opções O1 até O3 otimizam priorizando a velocidade do programa final, apesar de demorar mais para compilar. A Os otimiza 
o tamanho final do programa. E por último, a Ofast otimiza o tempo de execução, apesar de deixar o arquivo final maior.

4. Qualquer esboço de código invariavelmente vai ter avisos e erros. Se você quiser que esses avisos se tornem erros, assim deixando de criar um arquivo exec, a 
chave -pedantic-errors vai ser muito útil para você.

5. Para criar uma biblioteca compartilhada, isso é, uma biblioteca que vai suprir vários tipos de programas, usa-se a chave -shared.

6. Para ligar todo tipo de avisos na compilação de um programa é usada a chave -Wall. Pode ser usada junto com a chave -pedantic-erros.

7. Para deixar o código mais "universal" é nescessário escrever-lo no padrão ANSI. A chave -ansi serve para ligar avisos e erros para quaisquer usos da linguagem
que fizermos de modo incorreto segundo o comitê de organização ISO C89.

8. Para criar um arquivo na linguagem Assembly com um código base em C/C++, é usada a chave -S logo antes do arquivo base.

9. 
