Feature: User can log out
    As a User
    In order to exit my account
    I would like to be able to log out

    Scenario: User logs out
        Given the following user exists
            |name       |  email            | password  |
            |Zane       |  zane@gmail.com   | paswoord  |

        Given I am logged in as "Zane"
        Then I should see "Signed in successfully."
        And I should see "Logout" link
        When I click on the "Logout" link
        Then I should see "Signed out successfully."
        And I should be on the landing page
