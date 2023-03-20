trigger SendEmailToAccountOwner on Opportunity (after insert) {
    List<Id> accountIds = new List<Id>();
    for (Opportunity opp : Trigger.new) {
        accountIds.add(opp.AccountId);
    }

    List<Account> accounts = [SELECT Id, OwnerId FROM Account WHERE Id IN :accountIds];
    Map<Id, Id> accountOwnerMap = new Map<Id, Id>();
    for (Account acc : accounts) {
        accountOwnerMap.put(acc.Id, acc.OwnerId);
    }

    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
    for (Opportunity opp : Trigger.new) {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] {
            [SELECT Email FROM User WHERE Id = :accountOwnerMap.get(opp.AccountId)].Email
        });
        email.setSubject('Nova Oportunidade Adicionada');
        email.setPlainTextBody('Uma nova oportunidade foi adicionada à sua conta ' + opp.Account.Name);
        emails.add(email);
    }

    Messaging.sendEmail(emails);
}