trigger UpdateLastOpportunityDate on Opportunity (after insert) {
    Set<Id> accountIds = new Set<Id>();
    for (Opportunity opp : Trigger.new) {
        accountIds.add(opp.AccountId);
    }
    List<Account> accountsToUpdate = new List<Account>();
    for (AggregateResult ar : [SELECT AccountId, MAX(CloseDate) maxCloseDate 
                               FROM Opportunity 
                               WHERE AccountId IN :accountIds 
                               GROUP BY AccountId]) {
        Account acc = new Account(Id=(Id)ar.get('AccountId'), Last_Opportunity_Date__c=(Date)ar.get('maxCloseDate'));
        accountsToUpdate.add(acc);
    }
    update accountsToUpdate;
}