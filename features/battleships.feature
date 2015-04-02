Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What is your name?"

  Given I'm on the registration    
  When I input my "name" 
  And I input_two my "board_size"
  And I input_three my "number_of_ships"
  And I click "Submit"
  Then I should be on the "game_page" 

Scenario: Registration error
  Given I'm on the registration
  When the "name" field is empty
  And I click "Submit"
  Then I should see_a "There was an error with the name field. Please fill in the registration form again" 

Scenario: Viewing the board
  Given I'm on the game_page
  When the board size is "9"
  Then I should see_b "C3"
