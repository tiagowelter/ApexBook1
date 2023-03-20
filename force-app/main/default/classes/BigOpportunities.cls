public with sharing class BigOpportunities {
    public List<Opportunity> opportunities { get; set; }

    public BigOpportunities() {
        opportunities = [SELECT Name, Type, Amount FROM Opportunity WHERE Amount > 100000];
    }

    public void debugOpportunities() {
        for (Opportunity opp : opportunities) {
            System.debug(opp.Name + ' - ' + opp.Type + ' - ' + opp.Amount);
        }
    }
}