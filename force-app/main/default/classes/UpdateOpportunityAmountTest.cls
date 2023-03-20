@isTest
private class UpdateOpportunityAmountTest {
    static testMethod void testUpdateOpportunityAmount() {
        Opportunity opp = new Opportunity();
        opp.Amount = 500;
        opp.CloseDate = System.today();
        opp.StageName = 'Prospecting';
        opp.Name = 'Test Opportunity';
        insert opp;

        opp = [SELECT Id, Amount FROM Opportunity WHERE Id = :opp.Id];
        System.assertEquals(1000, opp.Amount);
    }
}