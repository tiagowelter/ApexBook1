public class EmpresaExercicio {
    Map<String, Integer> funcionarios;
 
    public EmpresaExercicio() {
       funcionarios = new Map<String, Integer>();
    }
 
    public void adcionarFuncionario(String nome, Integer salario) {
       funcionarios.put(nome, salario);
    }
 
    public void exibirFuncionarios() {
       for (String nome : funcionarios.keySet()) {
          System.debug(nome + ': ' + funcionarios.get(nome));
       }
    }
 }