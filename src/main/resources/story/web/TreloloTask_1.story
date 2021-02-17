Description: Task 1 - tests for check trello.com site;

Scenario: Login to the main trello.com page
Given I am on the main application page
When I click on an element by the xpath '//a[@href='/login']'
When I enter '${userEmail}' in a field with the name 'user' 
When I enter '${userPass}' in a field with the name 'password'
When I click on an element by the xpath '//input[@id="login"]'
When I enter '${userPass}' in a field by the xpath '//*[@id='password']'
When I click on an element by the xpath '//*[@id="login-submit"]'

Scenario: Create trello board
When I wait until an element with the xpath '//li[@data-test-id="create-board-tile"]//span' appears
When I click on an element by the xpath '//li[@data-test-id="create-board-tile"]//span'
When I enter '#{generate(Name.firstName)}' in a field by the xpath '//input[@class='_23NUW98LaZfBpQ']'
When I click on an element by the xpath '//button[@data-test-id="create-board-submit-button"]'
