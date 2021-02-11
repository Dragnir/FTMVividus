Description: Task 2 - tests for check trello.com site;

Scenario: Create account on main Walmart.com page
Given I am on the main application page
When I click on an element by the xpath '//a[@href='/login']'
When I enter '${userEmail}' in a field with the name 'user' 
When I enter '${userPass}' in a field with the name 'password'
When I click on an element by the xpath '//input[@id="login"]'
When I enter '${userPass}' in a field by the xpath '//*[@id='password']'
