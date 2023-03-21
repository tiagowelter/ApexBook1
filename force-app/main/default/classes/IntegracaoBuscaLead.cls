public with sharing class IntegracaoBuscaLead {
    public static void getData(String email){

        Http http = new Http();
        String url = 'https://salesforce.com/services/apexrest/AulaDeApex/Leads/'+email;
        String sessionId = 'xxxxxxxxxxx';

        HttpRequest getRequest = new HttpRequest();
        getRequest.setEndpoint(url);
        getRequest.setMethod('GET');
        getRequest.setHeader('content-type','application/json');
        getRequest.setHeader('authorization', 'Bearer '+sessionId);

        HttpResponse response = http.send(getRequest);

        if(response.getStatusCode() == 200){
            String returnValue = response.getBody();

            List<IntegracaoBuscaLead.listData> leadsList = (List<IntegracaoBuscaLead.listData>) JSON.deserialize(returnValue, List<IntegracaoBuscaLead.listData>.class);

            system.debug('leadsList' + leadsList);
            List<Lead> listLead = new List<Lead>();
            for(IntegracaoBuscaLead.listData cTemp : leadsList){
                Lead leadObj =  new Lead();
                leadObj.FirstName = cTemp.name;
                leadObj.Company = cTemp.company;
                leadObj.Email = cTemp.email;
                listLead.add(leadObj);
            }
            insert listLead;
        }
    }

    public class listData{
        public String name;
        public String company;
        public String email;
    }
}
