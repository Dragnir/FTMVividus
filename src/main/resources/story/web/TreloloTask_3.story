Description: Task 2 - tests for check trello.com site;

GivenStories: story/web/test/PreCondition.story

Scenario: Verify user Profile
When I wait and while profile available
When I click on an element by the xpath '//a[@data-test-id="header-member-menu-profile"]'
Then an element by the xpath '//button//div[@title="Dragnir (dragnir)"]' exists

Scenario: Visual check #1
When I COMPARE_AGAINST baseline with `testBaseline1` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|

Scenario: Visual check #2-5
When I compare baseline <pageBaseline> for pages located by <xPathPage>
Examples:
|pageBaseline |xPathPage                                                 |
|testBaseline2|//*[@data-tab="cards"]                                    |
|testBaseline3|//*[@data-tab="settings"]                                 |
|testBaseline4|//span[@aria-label='HouseIcon']							 |
|testBaseline5|//button[@data-test-id='team-home-sidebar-upgrade-prompt']|

Scenario: UI controls validation presence of element
Given I am on the main application page
When I find = '1' elements by By.xpath(//span[@aria-label="ApplicationSwitcherIcon"]) and for each element do
|step|
|When I click on an element by the xpath '//span[@aria-label="ApplicationSwitcherIcon"]'|
|When I click on an element by the xpath '//button[@aria-label="Close popover"]'        |
Then an alert is not present
