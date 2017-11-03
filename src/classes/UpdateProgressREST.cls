@RestResource(urlMapping='/Progress/*')
global with sharing class UpdateProgressREST {
	@HttpPost
    global static void UpdateProgress(List<Section__c> sections, List<Page__c> pages) 
    {
        System.debug('Got REST post, params = ' + sections + ' = ' + pages);
        update sections;
        update pages;
    }
}