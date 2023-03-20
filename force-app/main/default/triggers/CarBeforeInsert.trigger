trigger CarBeforeInsert on Car__c (before insert) {
    for (Car__c c : Trigger.new) {
      // Validação de preenchimento de campos obrigatórios
      if (c.Brand__c == null || c.YearOfManufacture__c == null) {
        c.addError('Todos os campos são obrigatórios');
      }
    }
}