📞 Salesforce Phone Validation Integration

🚀 Overview
This project integrates Salesforce with the NumVerify API to validate phone numbers in real-time.

 🧩 Features
- API Callouts using Apex
- JSON Parsing (JSON2Apex)
- Trigger-based automation
- Custom Field update (ValidPhoneNumber__c)
- Test class with mock callouts

 🔄 Flow
1. User creates Contact
2. Trigger fires
3. Apex sends API request
4. Response parsed
5. Contact updated with validation result

 🛠️ Tech Stack
- Salesforce Apex
- REST API (Numverify)
- VS Code + Salesforce CLI
- Git & GitHub

 📂 Components
- Apex Class: Validatephone
- JSON Parser: NewJSon2Apex
- Trigger: ContactPhoneTrigger
- Test Class: TestPhoneValidationResponse

🧪 Testing
- Used HttpCalloutMock for API simulation
- Ensured no exceptions and proper coverage

 👨‍💻 Author
 Alkapelli Shiva Sai
