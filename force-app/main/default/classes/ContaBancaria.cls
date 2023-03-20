/*
Exemplo de execução do código no Execute Anonymous:
        // Instanciando o objeto conta1
        ContaBancaria conta1 = new ContaBancaria();
        conta1.nome = "João Silva";
        conta1.endereco = "Rua ABC, 123";
        conta1.saldo = 1000;

        // Instanciando o objeto conta2
        ContaBancaria conta2 = new ContaBancaria();
        conta2.nome = "Maria Oliveira";
        conta2.endereco = "Rua DEF, 456";
        conta2.saldo = 2000;

        // Realizando operações bancárias
        conta1.depositar(500);
        System.debug(conta1.saldo); // 1500

        conta2.sacar(500);
        System.debug(conta2.saldo); // 1500
*/

public class ContaBancaria {
    public String nome;
    public String endereco;
    public Integer saldo;
 
    public void depositar(Integer valor) {
       saldo += valor;
    }
 
    public void sacar(Integer valor) {
       saldo -= valor;
    }
 }