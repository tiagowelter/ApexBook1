@isTest
private class IntegracaoMockadaTest {
  //static HttpCalloutMock mock = new HttpCalloutMock();

  static testMethod void testIntegracaoMockada() {
    //Test.setMock(HttpCalloutMock.class, mock);

    HttpResponse res = new HttpResponse();
    res.setHeader('Content-Type', 'application/json');
    res.setBody('{"nome": "John Doe", "email": "johndoe@email.com"}');
    res.setStatusCode(200);

    /*mock.responder = new HttpCalloutMock.Responder() {
      public HttpResponse respond(HttpRequest req) {
        return res;
      }
    }*/

    Test.startTest();
    //Lead lead = IntegracaoMockada.criarLead();
    Test.stopTest();

    //System.assertEquals('John Doe', lead.FirstName);
    //System.assertEquals('johndoe@email.com', lead.Email);
  }

  public class IntegracaoMockada{
    public static HttpResponse mocks(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/tests');
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        req.setBody('{"Name":"Lion"}');
        
        HttpResponse res = http.send(req);
        
        if(res.getStatusCode() == 200){
            System.debug(res.getBody());
        }
        else{
            System.debug('Error. Status :'+ res.getStatusCode());
        }
        return res;
    }
}
}