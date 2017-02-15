public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String name){
        Contact con = new Contact(FirstName='Freeda',
                                     LastName='Smith',
                                 Phone='(415)555-1212',
                                 Department='Wingo');
        insert con;
        
        Lead l = new Lead(FirstName='Jerry',
                          LastName='Smith',
                         Company='The SDFC Query');
        insert l;
        
        List<List <SObject>> result = [FIND :name in NAME FIELDS RETURNING Contact(FirstName, LastName), Lead(Name)];
        
        return result;
    }
}