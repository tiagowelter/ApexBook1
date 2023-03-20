public class ContactsInfo {
    public List<Contact> getContactsInformation(Id accountId) {
        List<Contact> contacts = new List<Contact>();
        contacts = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId = :accountId];
        return contacts;
    }
}