/*
Exemplo de execução do código no Execute Anonymous:
        Pessoa pessoa1 = new Pessoa("João Silva", 30);
        Pessoa pessoa2 = new Pessoa("Maria Oliveira", 25);

        // Instanciando o objeto pessoa
        Pessoa pessoa = new Pessoa("João Silva", 30);

        // Usando o método getNome
        System.debug(pessoa.getNome()); // João Silva

        // Usando o método setNome
        pessoa.setNome("Maria Oliveira");
        System.debug(pessoa.getNome()); // Maria Oliveira
*/

public class Pessoa {
    private String nome;
    private Integer idade;
    
    public Pessoa(String nome, Integer idade) {
      this.nome = nome;
      this.idade = idade;
    }
    
    public String getNome() {
      return nome;
    }
    
    public void setNome(String nome) {
      this.nome = nome;
    }
    
    public Integer getIdade() {
      return idade;
    }
    
    public void setIdade(Integer idade) {
      this.idade = idade;
    }
}