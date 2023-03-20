@isTest
private class AccountRetrieverTestV2 {
    @testSetup
    static void setup() {
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            accList.add(new Account(Name = 'Test Account ' + i));
        }
        insert accList;
    }
    
    @isTest
    static void testDebugAccounts() {
        AccountRetriever ar = new AccountRetriever();
        Test.startTest();
        ar.debugAccounts();
        Test.stopTest();
    }
}