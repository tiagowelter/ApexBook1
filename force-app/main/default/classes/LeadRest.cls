@RestResource(urlMapping='/Lead/*')
global with sharing class LeadRest {

    @HttpPost
    global static void createLead(String jsonData) {
        // Deserialize the JSON data into a Lead object
        Lead lead = (Lead)JSON.deserialize(jsonData, Lead.class);

        // Insert the Lead into the Salesforce database
        insert lead;
    }
}