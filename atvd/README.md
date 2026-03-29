1. **Qual a função do modificador de acesso privado (o uso do underscore "_" antes do nome da variável) no Dart?**
   Restringir o acesso à variável apenas ao arquivo `.dart` em que foi declarada.

2. **Explique com suas palavras a diferença prática entre acessar uma variável diretamente e acessá-la através de um Getter.**
   O acesso direto lê o valor "puro", enquanto o Getter permite processar, formatar ou validar a informação antes de retorná-la.

3. **Qual é a principal responsabilidade de um Setter dentro do conceito de Encapsulamento?**
   Validar e proteger os dados, impedindo que a variável receba valores inválidos.

4. **O que acontece no código se tentarmos acessar um atributo privado de uma classe estando em um arquivo diferente de onde ela foi declarada?**
   Ocorre um erro de compilação, pois o atributo fica invisível.

5. **Explique o motivo pelo qual o Dart não permite instanciar diretamente uma classe abstrata (ex: var c = Conteudo();).**
   Porque ela é um molde incompleto. Seria criado um objeto incapaz de executar métodos que não possuem implementação.

6. **O que faz a anotação @override e em quais situações seu uso é obrigatório?**
   Indica que um método está sendo sobrescrito ("substituído") da classe pai. É usado (como boa prática) para garantir a correta sobrescrita sem erro no nome do método.

7. **Qual a utilidade da função jsonDecode da biblioteca dart:convert quando estamos lidando com leitura de arquivos36?**
   Converte o texto (String) lido de um arquivo JSON em estruturas de dados do Dart (como mapas e listas), permitindo fácil acesso aos valores.



----- === ------

1. **O que foi impresso no console quando o seu programa tentou passar a classificação "-5" (vinda do JSON) para o objeto?**
   Foi impresso: `Erro gerado: Exception: A classificação não pode ser negativa!`. O bloco `catch` capturou a exceção que o Setter lançou ao barrar o valor -5.

2. **Como o uso do Encapsulamento neste exercício garantiu a segurança e a integridade dos dados do seu sistema?**
   O uso do Setter (`validarClassificacao`) com uma regra de validação impediu que um valor inválido (negativo) fosse salvo no atributo privado `_classificacao`, protegendo o objeto de conter dados que não fazem sentido.

3. **Se o arquivo "dados.json" estivesse completamente em branco no momento da leitura, qual seria o comportamento da função jsonDecode?**
   A função `jsonDecode` causaria um erro (uma exceção do tipo `FormatException`), pois um arquivo em branco não possui a estrutura de texto válida de um JSON para poder ser convertido em um Map.

4. **Qual a principal vantagem de definir o método darPlay() na classe pai de forma abstrata, em vez de criar métodos independentes apenas nas classes filhas?**
   Isso cria um "contrato" obrigatório, forçando todas as classes filhas (Filme, Serie, etc.) a implementarem o método `darPlay()`. Assim, podemos aproveitar o Polimorfismo: tratar qualquer objeto filho como sendo do tipo genérico `Conteudo` e ter a absoluta certeza de que o método `darPlay()` existirá nele.

5. **Qual foi a maior dificuldade encontrada durante a realização desta atividade?**
   (Resposta Pessoal. Exemplo: Entender que o exercício exigia o uso da classe nativa `File` do `dart:io` e não a criação de uma classe nova, além de compreender que a mensagem de "Erro gerado" no console não era uma falha do código, mas sim o comportamento correto e esperado do Try-Catch barrando a classificação negativa.)



