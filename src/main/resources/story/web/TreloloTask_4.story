Description: Task 2 - tests for check trello.com site;

GivenStories: story/web/test/PreCondition.story

Scenario: Verify user Profile
When I wait and while profile available
When I click on an element by the xpath '//a[@data-test-id="header-member-menu-profile"]'
Then an element by the xpath '//button//div[@title="Dragnir (dragnir)"]' exists

Scenario: Visual check #1
When I COMPARE_AGAINST baseline with `testBaseline6`
