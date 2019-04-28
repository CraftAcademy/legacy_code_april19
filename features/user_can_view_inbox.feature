Feature: User can view the inbox
    As a User
    In order to see emails sent to me
    I would like to be able to view my inbox

    Scenario: User can view inbox
        Given the following user exists
            |name       |  email              | password  |
            |georgeZane |  george@gmail.com   | psw12345  |
        
        When I visit the landing page
        Then I click "Login" link
        And I fill in the "user_email" field with "george@gmail.com"
        And I fill in the "user_password" field with "psw12345"
        And I click "Log in" button
        Then I should see "Signed in successfully."
        And I should see "Inbox"
        Then I click "Inbox" link
        Then I should see "Compose"