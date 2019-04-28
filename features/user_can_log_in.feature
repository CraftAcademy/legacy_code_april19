Feature: User can log in
  As a User 
  In order to use the application
  I would like to be able to log in to my account 

Background: Users exists and login initiateds
  Given the following user exists
    |name |email          | password|
    |boa  |craft@cool.se  |pwd008009|
  When I visit the landing page
  And I click "Login" link

Scenario: Log in successfully [Happy path] 
  When I fill in the "user_email" field with "craft@cool.se"
  And I fill in the "user_password" field with "pwd008009"
  And I click "Log in" button 
  Then I should see "Signed in successfully."

Scenario: User gives wrong password [Sad path] 
  When I fill in the "user_email" field with "craft@cool.se"
  And I fill in the "user_password" field with "pwd_wrong"
  And I click "Log in" button
  Then I should see "Invalid Email or password."

Scenario: User gives wrong email [Sad path] 
  When I fill in the "user_email" field with "wrong@cool.se"
  And I fill in the "user_password" field with "pwd008009"
  And I click "Log in" button
  Then I should see "Invalid Email or password."






