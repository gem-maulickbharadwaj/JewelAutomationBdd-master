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

  Scenario: Already registered button
    Given click on signup
    Then Click already registered button and validate navigated to login page

  Scenario: SignUp with empty fields (negative)
    Given click on signup
    Then Click register and validate if signUp is unsuccessful

  Scenario Outline: SignUp with single empty field (negative)
    Given click on signup
    When Fill fields "<firstname>","<lastname>","<username>","<email>","<password>","<confirmpassword>","<Random>"
    Then Click register and validate if signUp is unsuccessful
    Examples:
      | firstname | lastname | username | email        | password | confirmpassword | Random |
      |           | abc      | abc.abc  | a1bc@abc.com | Abcd@000 | Abcd@000        | N      |
      | abc       |          | abc.abc  | abc@abc.com  | Abcd@000 | Abcd@000        | N      |
      | abc       | abc      |          | abc@abc.com  | Abcd@000 | Abcd@000        | N      |
      | abc       | abc      | abc.abc  |              | Abcd@000 | Abcd@000        | N      |
      | abc       | abc      | abc.abc  | abc@abc.com  |          | Abcd@000        | N      |
      | abc       | abc      | abc.abc  | abc@abc.com  | Abcd@000 |                 | N      |

  Scenario: Username Availability Validation (negative)
    Given click on signup
    When Fill fields "arpit","mishra","","arpit.mishra@gemperf.com","arpit1234","arpit1234","N"
    Then check username availability for user already registered
    Then Click register and validate if signUp is unsuccessful

  Scenario: Username Availability Validation (positive)
    Given click on signup
    When Fill fields "arpit","mishra","","arpit.mishra@gemperf.com","arpit1234","arpit1234","Y"
    Then check username availability for user not already registered
    Then Click register and validate if signUp is successful

  Scenario: Username warning sign disappearing check
    Given click on signup
    Then Validate username availability sign appears on focusing on username field and disappears if it goes out of focus

    Scenario: Password strength dialog
      Given click on signup
      Then Password strength dialog appears on focusing on password field and disappears if it goes out of focus