Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What is your name?"

  Given I'm on the registration page   
  When I input "Bob" into the "name" field
  And I input "9" into the "board_size" field
  And I input "1" into the "number_of_ships" field
  And I click "Submit"
  Then I should see "Welcome Bob" 

Scenario: Registration error
  Given I'm on the registration page
  When I input "" into the "name" field
  And I click "Submit"
  Then I should see "There is no name"
