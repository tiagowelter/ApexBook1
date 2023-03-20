@isTest
public class AccountsWithContactsTest {

    @isTest
    static void testAccountsWithContacts() {
        // Criação de contas para teste
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 3; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i));
        }
        insert accounts;

        // Criação de contatos para teste
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < 6; i++) {
            Contact con = new Contact(AccountId = accounts[i/2].Id, FirstName = 'Test First Name ' + i, LastName = 'Test Last Name ' + i);
            contacts.add(con);
        }
        insert contacts;

        // Execução do método que popula o mapa de contas e contatos
        Test.startTest();
        AccountsWithContacts awc = new AccountsWithContacts();
        Test.stopTest();

        // Verificação dos resultados
        Map<Id, List<Contact>> accountsWithContactsMap = awc.accountsWithContactsMap;
        System.assertEquals(accounts.size(), accountsWithContactsMap.size());

        for (Id acc : accountsWithContactsMap.keySet()) {
            List<Contact> contactsForAccount = accountsWithContactsMap.get(acc);
            for (Contact con : contactsForAccount) {
                System.assertEquals(acc, con.AccountId);
            }
        }
    }
}