public with sharing class LeadFilter {
    public List<Lead> leads {get; set;}
  
    public LeadFilter(String status) {
      leads = new List<Lead>();
      String soql = 'SELECT Id, FirstName, LastName FROM Lead WHERE Status = :status';
      leads = Database.query(soql);
    }
  
    public void debugLeads() {
      for (Lead lead : leads) {
        System.debug(lead.FirstName + ' ' + lead.LastName);
      }
    }
}