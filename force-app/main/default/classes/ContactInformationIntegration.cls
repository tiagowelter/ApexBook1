public class ContactInformationIntegration {
    public static void updateLeadInformation(Id leadId) {
      // Consulta o Lead
      Lead lead = [SELECT Id, Email, FirstName, LastName, Phone FROM Lead WHERE Id = :leadId];
  
      // Consulta a API externa
      Http http = new Http();
      HttpRequest request = new HttpRequest();
      request.setEndpoint('https://api.externa.com/contacts/' + lead.Email);
      request.setMethod('GET');
      HttpResponse response = http.send(request);
  
      // Parseia a resposta da API
      if (response.getStatusCode() == 200) {
        Map<String, Object> apiResponse = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        lead.FirstName = (String) apiResponse.get('first_name');
        lead.LastName = (String) apiResponse.get('last_name');
        lead.Phone = (String) apiResponse.get('phone');
      }
  
      // Atualiza o registro do Lead
      update lead;
    }
  }