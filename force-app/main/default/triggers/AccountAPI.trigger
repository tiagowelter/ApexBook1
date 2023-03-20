@RestResource(urlMapping='/AccountAPI/*')
global class AccountAPI {
    
    @HttpPost
    global static void createAccount(String name, String description) {
        Account acc = new Account();
        acc.Name = name;
        acc.Description = description;
        insert acc;
    }
    
    @HttpPut
    global static void updateAccount(String accountId, String name, String description) {
        Account acc = new Account();
        acc.Id = accountId;
        acc.Name = name;
        acc.Description = description;
        update acc;
    }
    
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        return [SELECT Id, Name, Description FROM Account WHERE Id = :accountId];
    }
    
    @HttpDelete
    global static void deleteAccount() {
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Account acc = new Account();
        acc.Id = accountId;
        delete acc;
    }
}
