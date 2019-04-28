Feature: User can create account
    As a User,
    In order to use the application
    I would like to be able to create an account

    Background: 
        Given I visit the landing page
        And I click "Sign up" link

    Scenario: Successfully create an account [Happy Path]
        When I fill in "Name" with "Feliks"
        And I fill in "Email" with "feliks@craft.se"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click "Create" button
        Then I should see "Welcome! You have signed up successfully"

    Scenario: User can not select an email that has already been taken
        When I fill in "Name" with "Noel"
        And I fill in "Email" with "noel@craft.se"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click "Create" button
        And I click "Logout" link
        And I visit the landing page
        And I click "Sign up" link
        And I fill in "Name" with "Noelle"
        And I fill in "Email" with "noel@craft.se"
        And I fill in "Password" with "password1"
        And I fill in "Password confirmation" with "password1"
        And I click "Create" button
        Then I should see "Email has already been taken"

    Scenario: User can not select a name that has already been taken
        When I fill in "Name" with "Noel"
        And I fill in "Email" with "noel@craft.se"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I click "Create" button
        And I click "Logout" link
        And I visit the landing page
        And I click "Sign up" link
        And I fill in "Name" with "Noel"
        And I fill in "Email" with "noelle@craft.se"
        And I fill in "Password" with "password1"
        And I fill in "Password confirmation" with "password1"
        And I click "Create" button
        Then I should see "Name has already been taken"