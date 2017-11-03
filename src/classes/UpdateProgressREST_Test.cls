@isTest
public class UpdateProgressREST_Test 
{
	@isTest 
    static void TestUpdateProgress() 
    {
        DataUtils.CreateSections();
        
        List<Section__c> sections=[select id, Complete__c, Completed_Time__c
                                  from Section__c];
        List<Page__c> pages=[select id, Complete__c, Completed_Time__c
                            from Page__c];
        DateTime completed=System.now();
        for (Section__c section : sections) {
            section.Complete__c=true;
            section.Completed_Time__c=completed;
        }
        for (Section__c section : sections) {
            section.Complete__c=true;
            section.Completed_Time__c=completed;
        }
    	UpdateProgressRest.UpdateProgress(sections, pages);
    }
}