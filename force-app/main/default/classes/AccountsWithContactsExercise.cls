public with sharing class AccountsWithContactsExercise {
	public Map<Account, List<Contact>> accountsWithContactsMap {get; set;}

	public AccountsWithContactsExercise() {
		accountsWithContactsMap = new Map<Account, List<Contact>>();
		List<Account> accounts = [SELECT Id, Name FROM Account];
		for (Account acc : accounts) {
			List<Contact> contacts = [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId = :acc.Id];
			accountsWithContactsMap.put(acc, contacts);
		}
	}

	public void debugContactsForAccounts() {
		for (Account acc : accountsWithContactsMap.keySet()) {
			System.debug('A conta ' + acc.Name + ' tem os seguintes contatos:');
			for (Contact con : accountsWithContactsMap.get(acc)) {
			System.debug(con.FirstName + ' ' + con.LastName);
			}
		}
	}
}