public with sharing class ContactsController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT Name FROM Contact WITH SECURITY_ENFORCED Limit 10];
    }
}
/*code modified*/
