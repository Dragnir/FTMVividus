Description: Simple tests for check imdb.com site;

Scenario: Log in to imdb.com main page
Given I am on a page with the URL 'https://www.imdb.com'

When I click on an element by the xpath '//div[@class='ipc-button__text' and text()='Sign In']'
When I click on an element by the xpath '//span[text()='Sign in with IMDb']'
When I enter '${userEmail}' in a field by the xpath '//input[@id='ap_email']'
When I enter '${userPass}' in a field by the xpath '//input[@id='ap_password']'
When I click on an element by the xpath '//input[@id='signInSubmit']'

Scenario: Perform search for movie by search box
When I enter 'Apocalypse' in a field by the xpath '//input[@id='suggestion-search']'
When I click on an element by the xpath '//button[@id='suggestion-search-button']'

Scenario: Open page for one of the found products
When I click on an element by the xpath '//a[text()='Apocalypse Now']'

Scenario: Add movie Apocalypse Now to Watchlist
When I click on an element by the xpath '//div[text()='Add to Watchlist']'

Scenario: Navigate to “Your Watchlist”
When I click on an element by the xpath '//div[text()='Watchlist']'

Scenario: Sort list from Your Watchlist and export it 
When I click on an element by the xpath '//span[@class='lister-widget-sprite lister-sort ascending']'
Then I click on an element by the xpath '//a[text()='Export this list']'
