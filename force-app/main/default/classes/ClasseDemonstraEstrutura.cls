public with sharing class ClasseDemonstraEstrutura {

    //TIPOS PRIMITIVOS
    public static void tiposPrimitivos () {
        Integer num = 10;
        String name = 'John';
        Boolean trueOrFalse = true;

        system.debug('O valor da variável num é '+num);
        system.debug('O valor da variável name é '+name);
        system.debug('O valor da variável trueOrFalse é '+trueOrFalse);
    }

    public static void tiposPrimitivosInteger() {
        Integer age;
        age = 35;

        system.debug('O valor da variável age é '+age);
    }

    public static void tiposPrimitivosDouble() {
        double valueNum = 1.23456;

        system.debug('O valor da variável valueNum é '+valueNum);
    }

    public static void tiposPrimitivosLong() {
        Long numberOfContracts = 100000;

        system.debug('O valor da variável numberOfContracts é '+numberOfContracts);
    }

    public static void tiposPrimitivosDate() {
        Date today = Date.today();
        System.debug('Data de hoje: ' + today);
    }

    public static void tiposPrimitivosDatetime() {
        DateTime actualDate= DateTime.now(); 
        System.debug('Data e hora atual: ' + actualDate); 
        
        DateTime futureDate= actualDate.addDays(7); 
        System.debug('Data e hora daqui 7 dias: ' + futureDate);
    }

    public static void tiposPrimitivosString() {
        String name = 'João Silva';

        system.debug('O valor da variável name é '+name);
    }

    public static void tiposPrimitivosID() {
        Id recordId = '001D000000I8mUOIAZ';

        system.debug('O valor da variável recordId é '+recordId);
    }

    public static void tiposPrimitivosBoolean() {
        Boolean isValid = true; 

        if (isValid) { 
           System.debug('Valor é verdadeiro'); 
        } else { 
           System.debug('Valor é falso'); 
        }
    }

    public static void tiposPrimitivossObject() {
        Account myAccount = new Account();
        myAccount.Name = 'Conta de Exemplo';
        myAccount.Industry = 'Tecnologia';
        
        SObject genericObject = myAccount;

        system.debug('O valor da variável genericObject é '+genericObject);
    }

    //COLEÇÔES
    public static void colecoesList() {
        List<Integer> listaInteiros = new List<Integer>();
        listaInteiros.add(1);
        listaInteiros.add(2);
        listaInteiros.add(3);
        
        System.debug(listaInteiros);
    }

    public static void colecoesSet() {
        Set<String> namesSet = new Set<String>();
        namesSet.add('João');
        namesSet.add('Maria');
        namesSet.add('Pedro');
        namesSet.add('João');
        
        System.debug(namesSet); // Saída: {João, Maria, Pedro}
    }

    public static void colecoesMap() {
        Map<String, Integer> idadePorNome = new Map<String, Integer>();
        idadePorNome.put('João', 30);
        idadePorNome.put('Maria', 25);
        idadePorNome.put('Pedro', 35);
        
        System.debug(idadePorNome);
    }
    
    public static void colecoesMapRecuperandoValor() {
        Map<String, Integer> idadePorNome = new Map<String, Integer>();
        idadePorNome.put('João', 30);
        idadePorNome.put('Maria', 25);
        idadePorNome.put('Pedro', 35);
        
        Integer idadeDaMaria = idadePorNome.get('Maria');
        
        System.debug('A idade da Maria é '+ idadeDaMaria);
    }

    public static void colecoesMapContainskeyComErro() {
        Map<String, Integer> idadePorNome = new Map<String, Integer>();
        idadePorNome.put('João', 30);
        idadePorNome.put('Maria', 25);
        idadePorNome.put('Pedro', 35);
        
        Integer idadedoMarcos = idadePorNome.get('Marcos');
        
        System.debug('A idade do Marcos é '+ idadedoMarcos);
    }

    public static void colecoesMapContainskeySemErro() {
        Map<String, Integer> idadePorNome = new Map<String, Integer>();
        idadePorNome.put('João', 30);
        idadePorNome.put('Maria', 25);
        idadePorNome.put('Pedro', 35);
        
        Integer idadedoMarcos = 0;
        
        if (idadePorNome.containsKey('Marcos')) {
            idadeDoMarcos = idadePorNome.get('Marcos');
            System.debug('A idade do Marcos é ' + idadeDoMarcos);
        } else {
            System.debug('Não há informação sobre a idade do Marcos');
        }
    }

    //ENUMS
    public enum eNumsPrioridade {
        Alta,
        Media,
        Baixa
    }
    
    public class eNumsTarefa {
        public eNumsPrioridade eNumsPrioridade { get; set; }
    }

    //CONDICIONAIS
    public static void condicionaisIfSimples() {
        Integer num = 10;

        if (num > 5) {
          System.debug('Num é maior que 5');
        }
    }

    public static void condicionaisIfElseElseIf() {
        Integer idade = 25;

        if (idade < 18) {
            System.debug('Você é menor de idade');
        } else if (idade >= 18 && idade <= 30) {
            System.debug('Você é um jovem adulto');
        } else {
            System.debug('Você é um adulto');
        }
    }

    public static void condicionaisIfElse() {
        Integer idade = 20;

        if (idade >= 18) {
            System.debug('Esta pessoa é maior de idade.');
        } else {
            System.debug('Esta pessoa é menor de idade.');
        }
    }

    public static void condicionaisIfElseElseIf2() {
        Integer score = 70;

        if (score >= 90) {
            System.debug('A');
        } else if (score >= 80) {
            System.debug('B');
        } else if (score >= 70) {
            System.debug('C');
        } else {
            System.debug('D');
        }
    }

    public static void condicionaisSwitch() {
        Integer diaSemana = 3;

        switch on diaSemana {
          when 1{
            System.debug('Domingo');
          }
          when 2{
            System.debug('Segunda-feira');
          }
          when 3{
            System.debug('Terça-feira');
          }
          when else{
            System.debug('Dia inválido');
          }
        }
    }

    public static void condicionaisSwitchWhenElse() {
        Integer mes = 12;
        String nomeDoMes;
        
        switch on mes {
            when 1 { nomeDoMes = 'Janeiro'; }
            when 2 { nomeDoMes = 'Fevereiro'; }
            when 3 { nomeDoMes = 'Março'; }
            //...
            when else { nomeDoMes = 'Mês desconhecido'; }
        }
        
        System.debug(nomeDoMes);
    }

    public static void condicionaisTernario1() {
        Integer idade = 20;

        if (idade >= 18) {
            System.debug('Esta pessoa é maior de idade.');
        } else {
            System.debug('Esta pessoa é menor de idade.');
        }
    }

    //LOOPS
    public static void loopsForComList() {
        List<Integer> numbers = new List<Integer>{1, 2, 3, 4, 5};

        for(Integer i : numbers){
          System.debug(i);
        }
    }

    public static void loopsWhile() {
        Integer count = 1;
        while (count <= 10) {
          System.debug(count);
          count++;
        }
    }

    public static void loopsDoWhile() {
        Integer counter = 0;
        do {
            System.debug('Executando o loop do while: ' + counter);
            counter++;
        } while (counter < 5);
    }

    public static void loopsForeach() {
        List<Integer> listaInteiros = new List<Integer>();
        listaInteiros.add(1);
        listaInteiros.add(2);
        listaInteiros.add(3);
        
        for (Integer numero : listaInteiros) {
            System.debug(numero);
        }
    }

    public static void loopsForeachMap() {
        Map<String, Integer> idadePorNome = new Map<String, Integer>();
        idadePorNome.put('João', 30);
        idadePorNome.put('Maria', 25);
        idadePorNome.put('Pedro', 35);
        
        for (String nome : idadePorNome.keySet()) {
            Integer idade = idadePorNome.get(nome);
            System.debug(nome + ' tem ' + idade + ' anos de idade');
        }
    }

    //OPERADORES
    public static void operadores1() {
        Integer num1 = 10;
        Integer num2 = 20;
        
        // Adição
        Integer result = num1 + num2;
        System.debug(result); // 30

        // Subtração
        result = num2 - num1;
        System.debug(result); // 10

        // Multiplicação
        result = num1 * num2;
        System.debug(result); // 200

        // Divisão
        result = num2 / num1;
        System.debug(result); // 2
    }

    public static void operadores2() {
        Integer num1 = 10;
        num1 += 5; // num1 agora é 15
        num1 -= 2; // num1 agora é 13
        num1 *= 2; // num1 agora é 26
        num1 /= 2; // num1 agora é 13
        system.debug('O valor da variável num1 é '+num1);
    }

    public static void operadoresDeComparacao() {
        Integer num1 = 10;
        Integer num2 = 20;
        
        if (num1 == 10) {
           System.debug('num1 é igual a 10');
        }
        
        if (num1 < num2) {
           System.debug('num1 é menor que num2');
        }
    }

    public static void operadoresLogicos() {
        Boolean a = true;
        Boolean b = false;
        
        // Usando o operador E (&&)
        if (a && b) {
            System.debug('Ambos são true');
        } else {
            System.debug('Pelo menos um é false');
        }
        
        // Usando o operador OU (||)
        if (a || b) {
            System.debug('Pelo menos um é true');
        } else {
            System.debug('Ambos são false');
        }
        
        // Usando o operador de negação (!)
        if (!a) {
            System.debug('a é false');
        } else {
            System.debug('a é true');
        }
    }

    public static void operadoresCondicionais() {
        Integer idade = 30;
        String resultado = (idade >= 18) ? 'Maior de idade' : 'Menor de idade';
        System.debug(resultado); // 'Maior de idade'
    }

    public static void operadoresExemplo() {
        Integer num1 = 10;
        Integer num2 = 20;
        
        // Usando o operador aritmético +
        Integer result = num1 + num2;
        System.debug(result); // 30
        
        // Usando o operador de comparação ==
        if (num1 == 10) {
            System.debug('num1 é igual a 10');
        }
        
        // Usando o operador lógico &&
        if (num1 == 10 && num2 == 20) {
            System.debug('num1 é igual a 10 e num2 é igual a 20');
        }
    }

    //FUNÇÕES E MÉTODOS
    public static Double calcMedia(List<Double> numeros) {
        Double soma = 0;
        for (Double num : numeros) {
            soma += num;
        }
        return soma / numeros.size();
    }

    public static Boolean isPar(Integer num) {

        if(math.mod(num, 2) == 0){
            system.debug('this is even: ' + num);
        }else{
            system.debug('this is odd: ' + num);
        }

        return math.mod(num, 2) == 0;
    }

    public Integer soma(Integer num1, Integer num2){
        Integer result = num1 + num2;
        return result;
    }

    public Integer addNumbers(Integer num1, Integer num2) {
        return num1 + num2;
    }




    
}