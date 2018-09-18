@RestResource ( urlMapping='/Accounts/*/contacts' )

global with sharing class AccountManager 
{
       @HttpGet
       global static Account  getAccount()
       {           
             RestRequest req = RestContext.request;
             // grab the accountId between the URL 
             String accId = req.requestURI.substringBetween('Accounts/', '/contacts');
             Account acc = [select Id, Name, (select Id, Name from Contacts) from Account where Id = :accId];
             return acc;
        }
}