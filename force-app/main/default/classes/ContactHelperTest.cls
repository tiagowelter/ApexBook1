@isTest
private class ContactHelperTest {
    @isTest
    static void testUpdateContactEmail() {
        // Cria um registro de contato
        Contact testContact = new Contact();
        testContact.LastName = 'Test';
        testContact.Email = 'test@example.com';
        insert testContact;

        // Chama o método da classe normal e verifica se o email foi atualizado
        ContactHelper.updateContactEmail(testContact.Id, 'newemail@example.com');
        testContact = [SELECT Id, Email FROM Contact WHERE Id = :testContact.Id];
        System.assertEquals('newemail@example.com', testContact.Email);
    }
}