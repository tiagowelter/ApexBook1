public with sharing class AccountRetriever {
    public List<Account> accounts {get; set;}
  
    public AccountRetriever() {
      accounts = new List<Account>();
      accounts = [SELECT Id, Name FROM Account];
    }
  
    public void debugAccounts() {
      for (Account acc : accounts) {
        System.debug(acc.Name);
      }
    }
}