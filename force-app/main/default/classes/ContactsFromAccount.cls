public with sharing class ContactsFromAccount {

    public List<Contact> contacts {get; set;}
  
    public ContactsFromAccount(Id accountId) {
      contacts = new List<Contact>();
      String soql = 'SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId = :accountId';
      contacts = Database.query(soql);
    }
}