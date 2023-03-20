@isTest
private class AccountRetrieverTest {
  @testSetup static void createAccounts() {
    List<Account> accounts = new List<Account>{
      new Account(Name='Test Account 1'),
      new Account(Name='Test Account 2'),
      new Account(Name='Test Account 3')
    };
    insert accounts;
  }

  @isTest static void testAccountRetriever() {
    Test.startTest();
    AccountRetriever ar = new AccountRetriever();
    ar.debugAccounts();
    Test.stopTest();
  }
}