@isTest
global class IntegracaoBuscaLeadTest implements HttpCalloutMock {
    
    @isTest
    static void calloutTest(){
        
        Test.setMock(HttpCalloutMock.class, new IntegracaoBuscaLeadTest());

        Test.startTest();
        IntegracaoBuscaLead.getData('test@test.com');
        Test.stopTest();

        Lead lead = [SELECT FirstName, Email FROM Lead WHERE FirstName = 'John Doe' LIMIT 1];

        System.assertEquals('John Doe', lead.FirstName);
        System.assertEquals('johndoe@email.com', lead.Email);
    }
    
    global HTTPResponse respond(HTTPRequest req){
        
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"name": "John Doe", "email": "johndoe@email.com", "company": "Street"}');
        res.setStatusCode(200);
        return res;
    }
}