trigger EnviaEmailCarro on Car__c (after insert) {
    // Cria uma lista de objetos de email
    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
    
    // Loop para percorrer todos os novos registros inseridos
    /*for (Car__c c : Trigger.new) {
        // Cria uma nova mensagem de email
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        
        // Define o endereço de email do destinatário
        email.setToAddresses(new String[] {c.Owner.Email});
        
        // Define o assunto da mensagem de email
        email.setSubject('Novo Carro Inserido');
        
        // Define o corpo da mensagem de email
        email.setPlainTextBody('Um novo carro foi inserido com o seguinte modelo: ' + c.Brand__c);
        
        // Adiciona a mensagem de email à lista
        emails.add(email);
    }*/
    
    // Envia todas as mensagens de email em lote
    //Messaging.sendEmail(emails);
}