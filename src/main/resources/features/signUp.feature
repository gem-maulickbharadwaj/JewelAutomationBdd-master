Feature: Sign Up

  Scenario Outline: Validate sign up of already registered user
    Given click on signup
    Then enter "<name>" "<last>" "<user>" "<email>" "<pass>" "<cpass>" "<company>"
    Examples:
      | name  | last   | user         | email                            | pass      | cpass     | company |
      | arpit | mishra | arpit.mishra | arpit.mishra@geminisolutions.com | arpit1234 | arpit1234 | Gemini  |

  Scenario: Signup screen
    Given You are on the Sign up screen
    Then Click on the Sign up Button
    And Enter random username
    Then Enter all the fields and Validate the status