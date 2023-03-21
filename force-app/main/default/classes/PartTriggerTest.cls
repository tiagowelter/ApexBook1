@isTest
private class PartTriggerTest {
	static testMethod void testCarPartTrigger() {
		
        // Cria um registro de "Peça" de teste
		Test.startTest();
        Part__c part = new Part__c ();
		part.Name = 'Test Car Part';
		insert part;
        Integer emailLimit = Limits.getEmailInvocations();
        Test.stopTest();

		// Verifica se a tarefa foi criada
		Task task = [SELECT Id, Subject, Description, ActivityDate, WhatId FROM Task WHERE WhatId = :part.Id];
		System.assertNotEquals(null, task);
		System.assertEquals('Lembrete: Revisar peça inserida '+part.Name, task.Subject);
		
		// Verifica se o email foi enviado
		System.assertEquals(1,emailLimit);
	}
}