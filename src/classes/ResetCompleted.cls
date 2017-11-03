public class ResetCompleted {
    public static void ResetAll() {
        List<Section__c> sections=[select Id, Complete__c, Completed_Time__c, 
                                   (select Id, Complete__c, Started_Time__c, Completed_Time__c 
                                    from Pages__r)
                                   from Section__c];

        for (Section__c section : sections) {
            for (Page__c page : section.Pages__r) {
                page.Complete__c=false;
                page.Started_Time__c=null;
                page.Completed_Time__c=null;
            }
            update section.Pages__r;
            section.Complete__c=false;
            section.Completed_Time__c=null;
        }
        
        update sections;
    }
}