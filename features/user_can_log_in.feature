Feature: User can log in
  As a User 
  In order to use the application
  I would like to be able to log in to my accout 

  Background: 
    Given i visit the "aplication" page
    When i click "Log In" button 

  Scenario: Log in successfully
    When i fill in "name" with "Boa"
    And i fill "Password" with "Password"
    And i click "Log in" button
    Then i should see "Welcome, log in successfully"


    



