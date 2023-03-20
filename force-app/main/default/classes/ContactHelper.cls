public class ContactHelper {
    public static void updateContactEmail(Id contactId, String newEmail) {
        Contact contact = [SELECT Id, Email FROM Contact WHERE Id = :contactId];
        contact.Email = newEmail;
        update contact;
    }
}