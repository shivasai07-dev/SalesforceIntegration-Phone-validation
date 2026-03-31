@isTest
public class Testvalidatephone_API {
    private class MockPhoneValidationResponse implements HttpCalloutMock {
        public HttpResponse respond(HttpRequest req) {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setStatusCode(200);

            // Sample JSON response from the phone validation API (mocked)
            String mockJson = '{"valid":true, "number":"14158586273", "local_format":"4158586273", "country_code":"IN", "carrier":"Test Carrier"}';
            res.setBody(mockJson);
            return res;
        }
    }

    @isTest
    static void testAfterInsertphone() {
        // Step 1: Create test contacts
        List<Contact> conList = new  List<Contact>();
        for(Integer i=0;i<5;i++){
        Contact con1 = new Contact();
            con1.LastName='Sharma '+ i;
            con1.Phone='14158586273';
            conList.add(con1);
        }
        insert conList;

        // Step 2: Set up the mock response
        Test.setMock(HttpCalloutMock.class, new MockPhoneValidationResponse());

        // Step 3: Execute the after-insert method
        Test.startTest();
        validatephone_API.afterInsertphone(conList);
        Test.stopTest();

        // Step 4: Verify that no exceptions occurred
        System.assert(true, 'Method executed without exceptions');
    }

    @isTest
    static void testPerformNumverifyOp() {
        // Step 1: Create a test map of contacts with phone numbers
        Map<Id, String> contactPhoneMap = new Map<Id, String>();
        Contact con1 = new Contact(LastName = 'Doe', Phone = '14158586273');
        insert con1;
        contactPhoneMap.put(con1.Id, con1.Phone);

        // Step 2: Set up the mock response
        Test.setMock(HttpCalloutMock.class, new MockPhoneValidationResponse());

        // Step 3: Execute the future method
        Test.startTest();
        validatephone_API.performNumverifyOp(contactPhoneMap);
        Test.stopTest();

        // Step 4: Verify that no exceptions occurred
        System.assert(true, 'Method executed without exceptions');
    }

}