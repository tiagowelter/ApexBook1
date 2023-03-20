trigger UpdateOpportunityAmount on Opportunity (before insert, before update) {
    for (Opportunity opp : Trigger.new) {
        if (opp.Amount < 1000) {
            opp.Amount = 1000;
        }
    }
}