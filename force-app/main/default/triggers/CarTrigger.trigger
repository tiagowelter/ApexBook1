trigger CarTrigger on Car__c (after insert, after update) {
    //Lista para armazenar os objetos Carro que serão processados
    List<Car__c> carros = new List<Car__c>();
  
    //Determina se é um gatilho após inserção ou atualização aomente para demonstração de como diferenciar quando é para inserir ou quando se é para atualizar
    /*if (Trigger.isInsert) {
      carros = Trigger.new;
    } else if (Trigger.isUpdate) {
      carros = Trigger.new;
    }
  
    //Envia um email para o dono do registro Carro após a inserção ou atualização
    for (Car__c c : carros) {
      Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
      email.setToAddresses(new String[] {c.Owner.Email});
      email.setSubject('Informações sobre seu carro: ' + c.Name);
      email.setPlainTextBody('O registro do seu carro ' + c.Name + ' foi atualizado. Verifique as informações atualizadas na plataforma Salesforce.');
      Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
    }*/
}