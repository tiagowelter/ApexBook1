public class LeadExample {

    public List<Lead> leadList {get; set;}
  
    public LeadExample() {
      leadList = new List<Lead>();
      leadList = [SELECT Id, FirstName, LastName, Company FROM Lead];
    }
  
    public void printLeads() {
      for (Lead lead : leadList) {
        System.debug('Lead ID: ' + lead.Id);
        System.debug('Lead First Name: ' + lead.FirstName);
        System.debug('Lead Last Name: ' + lead.LastName);
        System.debug('Lead Company: ' + lead.Company);
      }
    }
}