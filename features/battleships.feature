Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What is your name?"

  Given I'm on the registration page   
  When I input my "name" 
  And I input_two my "board_size"
  And I input_three my "number_of_ships"
  And I click "Submit"
  Then I should be on the "game_page" 

Scenario: Registration error
  Given I'm on the registration page
  When "name" field is empty
  And I click "Submit"
  Then I should see_a "Please make sure you fill in all of the fields"
  When "board_size" field is empty
  And I click "Submit"
  Then I should see_b "Please make sure you fill in all of the fields"
  When "number_of_ships" field is empty
  And I click "Submit"
  Then I should see_c "Please make sure you fill in all of the fields"

