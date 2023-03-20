trigger LeadTrigger on Lead (before insert) {
    for (Lead l : Trigger.new) {
      l.Status = 'Open';
      l.Rating = 'Hot';
    }
  }