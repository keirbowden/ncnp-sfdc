public class DataUtils {
    public static void DeleteSections() {
        List<Section__c> sections=[select id from Section__c];
        delete sections;
    }
    
    public static void CreateSections() {
        addDFSection();
        addBrightGenSection();
    }
    
    public static void addDFSection() {
        List<Section__c> sections=new List<Section__c>();
        Section__c dfSection=new Section__c(
            					Name='Dreamforce 17',
                                Description_Long__c='Get to grips with Dreamforce');
		sections.add(dfSection);
        insert sections;
        
		List<Page__c> pages=new List<Page__c>();
        Page__c dfOverview=new Page__c(
               Section__c=dfSection.id,
               Index__c=10,
               Title__c='Dreamforce 101',
               Detail__c='<b>A Brief History</b>\n' + 
                         '<p>Salesforce was founded in 1999, but it wasn\'t until 2003' + 
                         ' that the first Dreamforce took place, where 1,300' + 
                         ' people registered to attend. By 2016 this number had grown' + 
                         ' to an astounding 171,000 with an additional 15 million ' + 
                         ' joining online. Just 52 sessions (including keynotes) were' + 
                         ' available to the first attendees, while in 2016 it was ' + 
                         ' over 3,000!</p>\n' +
                         '<b>Dreamforce 2017</b> ' + 
                         '<p>This year\'s Dreamforce takes place on 6th - 9th November and' +
                         ' sold out of full conference passes unusually early. Salesforce' +
            			 ' Einstein is being used to generate agenda builder recommendations' + 
                         ' based on an attendee\'s interests and historical Dreamforce data' + 
                         '</p>',
               Question_1__c='When was the first Dreamforce?',
               Question_1_Option_a__c='2007',
               Question_1_Option_b__c='1999',
               Question_1_Option_c__c='2003',
               Question_1_Option_d__c='2004',
               Question_1_Correct_Answer__c='c',
               Question_2__c='Which Salesforce technology is being used to generate recommendations?',
               Question_2_Option_a__c='Einstein',
               Question_2_Option_b__c='Feynman',
               Question_2_Option_c__c='Oppenheimer',
               Question_2_Correct_Answer__c='a'
            
                                   );
        
        Page__c dfSession=new Page__c(
               Section__c=dfSection.id,
               Index__c=20,
               Title__c='My Dreamforce Session',
               Detail__c='<b>Technology</b>\n' + 
                         '<p>The application I\n showcasing at Dreamforce is built</p>\n' +
                         '<b>Dreamforce 2017</b> ' + 
                         '<p>This year\'s Dreamforce takes place on 6th - 9th November and' +
                         ' sold out of full conference passes unusually early. Salesforce' +
            			 ' Einstein is being used to generate agenda builder recommendations' + 
                         ' based on an attendee\'s interests and historical Dreamforce data' + 
                         '</p>',
               Question_1__c='When was the first Dreamforce?',
               Question_1_Option_a__c='2007',
               Question_1_Option_b__c='1999',
               Question_1_Option_c__c='2003',
               Question_1_Option_d__c='2004',
               Question_1_Correct_Answer__c='c',
               Question_2__c='Which Salesforce technology is being used to generate recommendations?',
               Question_2_Option_a__c='Einstein',
               Question_2_Option_b__c='Feynman',
               Question_2_Option_c__c='Oppenheimer',
               Question_2_Correct_Answer__c='a'
            
                                   );
		pages.add(dfOverview);
        insert pages;
    }
    
    public static void addBrightGenSection() {
        List<Section__c> sections=new List<Section__c>();
        Section__c bgSection=new Section__c(
            					Name='BrightGen',
                                Description_Long__c='Learn more about the UK\'s top Platinum Partner');
		sections.add(bgSection);
        insert sections;
        
		List<Page__c> pages=new List<Page__c>();
        Page__c bgOverview=new Page__c(
               Section__c=bgSection.id,
               Index__c=10,
               Title__c='Bright Beginnings',
               Detail__c='<b>Where it all began</b><br/>\n' + 
                         '<p>BrightGen was founded in 2006 and has been a Platinum Partner of ' + 
                         ' Salesforce since the start of the programme. We are pure-play ' + 
                         ' Salesforce and our entire team are in-house and based in the UK </p>\n' +
                         '<b>Projects</b><br/>' + 
                         '<p>BrightGen have delivered over 500 projects on time and within ' +
                         ' budget, ranging from Salesforce implementations to custom product ' +
                         ' builds for ISVs. We focus on implementations, service management ' + 
                         ' and IP development.</p>\n' +
                         '<b>Certifications</b><br/>' + 
                         '<p>Each member of the BrightGen technical team typically holds at ' + 
            			 ' least 4 certifications, with many well into double figures. We have ' + 
                         ' two Certified Technical Architects with several others in the process ' + 
                         ' of earning this sought after certification' +
                         '</p>\n',
               Question_1__c='How many Certified Technical Architects do BrightGen have?',
               Question_1_Option_a__c='0',
               Question_1_Option_b__c='3',
               Question_1_Option_c__c='1',
               Question_1_Option_d__c='2',
               Question_1_Correct_Answer__c='d',
               Question_2__c='Which is not a focus area for BrightGen?',
               Question_2_Option_a__c='Service Management',
               Question_2_Option_b__c='Salesforce Implemenations',
               Question_2_Option_c__c='AWS Implementations',
               Question_2_Option_d__c='IP Development',
               Question_2_Correct_Answer__c='c'
            
                                   );
        
        Page__c bgService=new Page__c(
               Section__c=bgSection.id,
               Index__c=20,
               Title__c='Service Management',
               Detail__c='<b>Maintenance</b><br/>\n' + 
                         '<p>Service management customers have a dedicated contact for ' + 
                         ' their business plus a team of experts with a thorough knowledge ' + 
                         ' of their industry</p>\n' +
                         '<b>Measuring</b><br/>' + 
                         '<p>Day to day activity is measured and reported on, plus customers ' +
                         ' are kept up to date on how many of their agreed monthly service' +
            			 ' hours they have used. Time spent on cases is monitored continuously ' + 
                         ' and reported via a weekly email.' + 
                         '</p>' +
                         '<b>Mentoring</b><br/>' + 
                         '<p>A Continuous Improvement Programme is created in conjunction with ' +
                         ' the customer, providing a roadmap of agreed activities. We provide' +
            			 ' advice on changes and guidance for future requirements to ensure our ' + 
                         ' customers get the most out of Salesforce.' + 
                         '</p>',
               Question_1__c='How often is time spent on cases reported to customers?',
               Question_1_Option_a__c='Yearly',
               Question_1_Option_b__c='Weekly',
               Question_1_Option_c__c='Daily',
               Question_1_Option_d__c='Monthly',
               Question_1_Correct_Answer__c='b',
               Question_2__c='What provides a roadmap of agreed activities for a customer?',
               Question_2_Option_a__c='Continuous Integration Programme',
               Question_2_Option_b__c='Continuous Delivery Programme',
               Question_2_Option_c__c='Continuous Improvement Programme',
               Question_2_Correct_Answer__c='c'
            
                                   );
		pages.add(bgOverview);
		pages.add(bgService);
        insert pages;
    }
}