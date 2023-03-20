trigger CreateOpportunity on Account (after insert) {
    List<Opportunity> newOpps = new List<Opportunity>();
    
    for (Account acc : Trigger.new) {
      Opportunity newOpp = new Opportunity();
      newOpp.Name = acc.Name + ' Opportunity';
      newOpp.CloseDate = Date.today().addMonths(6);
      newOpp.AccountId = acc.Id;
      newOpps.add(newOpp);
    }
    
    insert newOpps;
}