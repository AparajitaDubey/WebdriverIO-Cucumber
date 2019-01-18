Feature:
    As a QA
    I want to test Google Website
    I want to make sure that everything works as expected

Scenario: Google WebPage Elements are displayed
    Given I open the url "http://google.com"
        #Google logo (or whatever custom image above the search bar)
        Then  I expect that element "img#hplogo" is visible
        #Search entry field 
        Then  I expect that element "input.gLFyf.gsfi" is visible
        #Sign in button
        Then  I expect that element "a#gb_70" is visible
        #I'm Feeling Lucky button
        Then  I expect that element "//center/input[2]" does exist

Scenario: Check SignIn Functionality
    #User can't sign in with invalid credentials 
    Given I open the url "http://google.com"
         When I click on the link "Sign in"
         When I set "xfddyz@xyfdz.cofdm" to the inputfield "input#identifierId.whsOnd.zHQkBf"
         When I click on the button "content.CwaK9"
         When I pause for 3000ms    
         Then I expect that element "div.GQ8Pzc" matches the text "Couldn't find your Google Account"

Scenario: Check if google search is functional
    Given I open the url "http://google.com"
         #Trigger search using fullscreen keywords
         When I set "fullscreen" to the inputfield "input.gLFyf.gsfi"
         When I pause for 1000ms    
         When I click on the button "//center/input[1]"
         When I pause for 1000ms
         #Verify that first search result has URL: fullscreenmedia.co
         Then I expect that element "//*[@id='rso']/div[1]/div/div/div/div/div[1]/a/div/cite" contains the text "fullscreenmedia.co"
         Then I expect that element "//*[@id='rso']/div[1]/div/div/div/div/div[1]" is visible
         When I scroll to element "//*[@id='rso']/div[4]/div/div[1]/div/div/div[1]"
         When I scroll to element "//*[@id='rso']/div[4]/div/div[1]"
         When I scroll to element "//*[@id='rso']/div[4]/div/div[2]"
         When I pause for 2000ms 
         # Verify sixth result is displayed
         Then I expect that element "//*[@id='rso']/div[4]/div/div[4]" is visible


Scenario: Verify that clicking first search result does redirect to Fullscreen Media website
    Given I open the url "http://google.com"
         #Trigger search using fullscreen keywords
         When I set "fullscreen" to the inputfield "input.gLFyf.gsfi"
         When I pause for 1000ms    
         When I click on the button "//center/input[1]"
         When I pause for 1000ms
         When I click on the element "//*[@id='rso']/div[1]/div/div/div/div/div[1]/a/div/cite"
         #Verify that clicking first search result does redirect to Fullscreen Media website
         Then I expect that the title is not "Fullscreen"
         Then  I expect that the url is "https://fullscreenmedia.co/"
    
 