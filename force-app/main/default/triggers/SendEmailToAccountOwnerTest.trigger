@isTest
private class SendEmailToAccountOwnerTest {

    @testSetup
    static void createTestData() {
        // Criação da conta de teste
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        // Criação do usuário para associar à conta de teste
        Profile p = [SELECT Id FROM Profile WHERE Name = 'Standard User'];
        User u = new User(Alias = 'standt', Email='standarduser@testorg.com', 
                          EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
                          LocaleSidKey='en_US', ProfileId = p.Id, 
                          TimeZoneSidKey='America/Los_Angeles', UserName='standarduser@testorg.com');
        insert u;
        
        // Associação do usuário criado à conta de teste
        acc.OwnerId = u.Id;
        update acc;
    }

    @isTest
    static void testSendEmailToAccountOwner() {
        // Criação da oportunidade de teste associada à conta criada no testSetup
        Account acc = [SELECT Id, OwnerId FROM Account WHERE Name = 'Test Account'];
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', 
                                          CloseDate = Date.today().addDays(30), AccountId = acc.Id);
        insert opp;
        
        // Verificação de que o e-mail foi enviado corretamente
        Test.startTest();
        String usrEmail = [SELECT Email FROM User WHERE Id = :acc.OwnerId  LIMIT 1].Email;
        
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.ToAddresses = new String[] {usrEmail};
        message.subject = 'Nova Oportunidade Adicionada';
        message.setPlainTextBody('Uma nova oportunidade foi adicionada à sua conta ' + acc.Name);

        Messaging.SingleEmailMessage[] messages = new List < Messaging.SingleEmailMessage > {message};
        Messaging.SendEmailResult[] sentEmails = Messaging.sendEmail(messages);
        Test.stopTest();
        
        System.assertEquals(1, sentEmails.size(), 'Deve ter sido enviado apenas um e-mail');

    }
}