Description: Task 2 - tests for check trello.com site;

Scenario: Sign In on main Walmart.com page
Given I am on the main application page
When I click on an element by the xpath '//a[@href='/login']'
When I enter '${userEmail}' in a field with the name 'user' 
When I enter '${userPass}' in a field with the name 'password'
When I click on an element by the xpath '//input[@id="login"]'
When I enter '${userPass}' in a field by the xpath '//*[@id='password']'
When I click on an element by the xpath '//*[@id="login-submit"]'

Scenario: Verify user Profile
When I wait until an element with the xpath '//button[@data-test-id="header-member-menu-button"]' appears
When I click on an element by the xpath '//button[@data-test-id="header-member-menu-button"]'
When I click on an element by the xpath '//a[@data-test-id="header-member-menu-profile"]'
Then an element by the xpath '//button//div[@title="Dragnir (dragnir)"]' exists
