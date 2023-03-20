trigger PartTrigger on Part__c (after insert) {
    List<Task> tasks = new List<Task>();
    List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
    
    for (Part__c  part: Trigger.new) {
        
        // Cria uma tarefa relacionada ao registro de "Lembrete"
        Task task = new Task();
        task.Subject = 'Lembrete: Revisar peça inserida ' + part.Name;
        task.ActivityDate = System.today();
        task.WhatId = part.Id;
        tasks.add(task);
        
        // Envia um email para o usuário que incluiu o registro
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new List<String>{part.Owner.Email});
        mail.setSubject('Nova peça de carro cadastrada: ' + part.Name);
        mail.setPlainTextBody('Nova peça de carro cadastrada: ' + part.Name + '\nData: ' + System.today());
        mails.add(mail);
    }
    
    // Insere as tarefas e envia os emails
    insert tasks;
    Messaging.sendEmail(mails);
}