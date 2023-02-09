Feature: Log In

  Scenario Outline: Launch login and logout jewel dashboard
    Given user clicks on logIn button and closes it
    Then user again clicks on logIn button and enters <Username> and <Password>
    Then user navigates back after loggin in
    Examples:
      | Username     | Password  |
      | arpit.mishra | arpit1234 |

  Scenario: Open a new tab in Ignito Mode
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    Then Enter Password
    And Logout the Account

  Scenario: Validate the alert ,username and status when user login
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Validate alert ,username and status of the window button