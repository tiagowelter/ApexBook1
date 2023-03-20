public class InsereContato {
    public static void criarContato(String nome, String sobrenome, String email, Id contaId) {
        Contact contato = new Contact();
        contato.FirstName = nome;
        contato.LastName = sobrenome;
        contato.Email = email;
        contato.AccountId = contaId;
        insert contato;
    }
}