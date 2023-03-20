public class ContaBancariaV2 {
    public String Nome;
    public Integer Saldo;
 
    public void Deposita(Integer valor) {
       Saldo = Saldo + valor;
    }
 
    public Integer ConsultaSaldo() {
       return Saldo;
    }
 }