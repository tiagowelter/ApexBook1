public class ListaDeCompras {
    public String nomeDaLista { get; set; }
    public List<String> itens { get; set; }

    public ListaDeCompras(String nomeDaLista) {
        this.nomeDaLista = nomeDaLista;
        this.itens = new List<String>();
    }

    public void adicionarItem(String nomeDoItem) {
        this.itens.add(nomeDoItem);
    }

    public void imprimirLista() {
        System.debug('Lista de compras ' + this.nomeDaLista + ':');
        for (String item : this.itens) {
            System.debug(' - ' + item);
        }
    }
}