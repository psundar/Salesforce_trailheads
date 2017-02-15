public class ContactSearch {
    public static List<Contact> searchForContacts(String last_name, String mailing_postal_code){
        List<Contact> result = [SELECT ID, Name
            					FROM Contact
            					WHERE (LastName=:last_name AND MailingPostalCode=:mailing_postal_code)];
        return result;
    }
}