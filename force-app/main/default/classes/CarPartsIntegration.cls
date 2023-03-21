public with sharing class CarPartsIntegration {
    public static void upsertCarParts(String carCode) {
      // Realiza o GET na URL especificada, passando o código do carro
      Http h = new Http();
      HttpRequest req = new HttpRequest();
      req.setMethod('GET');
      req.setEndpoint('https://pecascarros.com/getPecas/' + carCode);
      HttpResponse res = h.send(req);
  
      // Verifica se a resposta é válida e parseia o JSON
      if (res.getStatusCode() == 200) {
        Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
        List<Object> carParts = (List<Object>) result.get('carParts');
  
        // Cria uma lista de registros Peça
        List<Part__c> partsToUpsert = new List<Part__c>();
        for (Object obj : carParts) {
          Map<String, Object> partData = (Map<String, Object>) obj;
          Part__c part = new Part__c();
          part.Name = (String) partData.get('partName');
          part.PartCost__c = (Decimal) partData.get('partPrice');
          partsToUpsert.add(part);
        }
  
        // Realiza o upsert na lista de registros Peça
        try {
          upsert partsToUpsert;
        } catch (Exception e) {
          System.debug(e.getMessage());
        }
      }
    }
  }