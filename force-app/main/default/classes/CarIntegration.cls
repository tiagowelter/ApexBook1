@RestResource(urlMapping='/Cars/*')
global with sharing class CarIntegration {

  @HttpPost
  global static void createCar(String jsonBody) {
    // Deserializa o JSON
    Map<String, Object> carJson = (Map<String, Object>) JSON.deserializeUntyped(jsonBody);

    // Cria um novo objeto Carro
    Car__c newCar = new Car__c();
    newCar.Name = (String) carJson.get('name');
    newCar.Price__c = (Double) carJson.get('price');
    newCar.Brand__c = (String) carJson.get('brand');

    // Insere o registro no objeto Carro
    insert newCar;
  }
}