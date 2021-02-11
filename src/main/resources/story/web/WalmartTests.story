Description: Simple tests for check Walmart.com site;

Scenario: Create account on main Walmart.com page
Given I am on a page with the URL 'https://www.walmart.com/account/signup'
When I enter '#{generate(Name.firstName)}' in a field by the xpath '//*[@id='first-name-su']'
When I enter '#{generate(Name.lastName)}' in a field by the xpath '//*[@id='last-name-su']'
When I enter '#{generate(Internet.emailAddress)}' in a field by the xpath '//*[@id='email-su']'
When I enter '#{generate(regexify '[a-z]{3}[A-Z]{3}[0-9]{3}')}=' in a field by the xpath '//*[@id='password-su']'
When I click on an element by the xpath '//button[@class='button s-margin-top text-inherit']'

Scenario: Perform search for product by search box
Given I am on a page with the URL 'https://www.walmart.com/'
When I enter 'Pioneer FH-S52BT Double Din Bluetooth Receiver' in a field by the xpath '//*[@id='global-search-input']'
When I click on an element by the xpath '//button[@id='global-search-submit']'

Scenario: Open product page for product from previous step
When I click on an element by the xpath '//a[@href='/ip/Pioneer-FH-S52BT-Double-Din-Bluetooth-Receiver/588953342']/span[text()='Product Image']'

Scenario: Add product to cart
When I click on an element by the xpath '//button[@class='button spin-button prod-ProductCTA--primary button--primary']'

Scenario: Add product to cart
When I click on an element by the xpath '//button[@data-automation-id='pac-pos-view-cart']'
Then the text 'Pioneer FH-S52BT Double Din Bluetooth Receiver' exists