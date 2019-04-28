Feature: User can log out
    As a User
    In order to exit my account
    I would like to be able to log out

    Background:
        Given the following user exists
            |name       |  email            | password  |
            |Zane       |  zane@gmail.com   | paswoord  |


    Scenario: User logs out
        Given I am logged in as "Zane"
        Then I should be on the landing page
        And I should see "Hello, Zane"
        Then I should see "Logout"
        When I click on the "Logout" link
        Then I should see "Signed out successfully."
        And I should be on the landing page
