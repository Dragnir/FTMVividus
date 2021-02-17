Description: Task 2 - tests for check trello.com site;

GivenStories: story/web/test/PreCondition.story

Scenario: Verify user Profile
When I wait until an element with the xpath '//button[@data-test-id="header-member-menu-button"]' appears
When I click on an element by the xpath '//button[@data-test-id="header-member-menu-button"]'
When I click on an element by the xpath '//a[@data-test-id="header-member-menu-profile"]'
Then an element by the xpath '//button//div[@title="Dragnir (dragnir)"]' exists

Scenario: Visual check #1
When I COMPARE_AGAINST baseline with `testBaseline1` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|

Scenario: Visual check #2
When I click on an element by the xpath '//*[@data-tab="cards"]'
When I COMPARE_AGAINST baseline with `testBaseline2` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|

Scenario: Visual check #3
When I click on an element by the xpath '//*[@data-tab="settings"]'
When I COMPARE_AGAINST baseline with `testBaseline3` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|

Scenario: Visual check #4
When I click on an element by the xpath '//span[@aria-label='HouseIcon']'
When I COMPARE_AGAINST baseline with `testBaseline4` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|

Scenario: Visual check #5
When I click on an element by the xpath '//button[@data-test-id='team-home-sidebar-upgrade-prompt']'
When I COMPARE_AGAINST baseline with `testBaseline5` ignoring:
|ELEMENT                    |
|By.xpath(//*[@id="header"])|
