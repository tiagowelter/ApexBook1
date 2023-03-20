/*
Exemplo de execução do código no Execute Anonymous:
        ContaBancaria conta1 = new ContaBancaria(1, 'Conta corrente', 1000);
        System.debug(conta1.numeroConta); // 1
        System.debug(conta1.nome); // Conta corrente
        System.debug(conta1.saldo); // 1000
*/

public class ContaBancariaV3 {
  public Integer numeroConta;
  public String nome;
  public Decimal saldo;
  
  public ContaBancariaV3(Integer numeroConta, String nome, Decimal saldo) {
    this.numeroConta = numeroConta;
    this.nome = nome;
    this.saldo = saldo;
  }
}
