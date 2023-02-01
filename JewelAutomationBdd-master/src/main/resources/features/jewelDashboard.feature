Feature: Jewel Dashboard Automation

  Scenario: Verify Logout Button
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify Logout button is visible or not

  Scenario: Verify Home screen is appearing or not
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the text of the Home screen

  Scenario:Click on the Autolytics button
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Click on the Autolytics screen

  Scenario: Verify The autolytics screen is opening or not
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Autolytics Screen

  Scenario: Verify The Bridge Token screen is opening or not
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Bridge Token Button is clickable or not

  Scenario: Click on copy Bridge Token
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Click on Copy Bridge Token

  Scenario: Check the alert
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Alert when copy button is clicked

  Scenario: Check the alert of Change Token
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Alert when Change Token button is clicked

  Scenario: Check the alert and time of Change Token button
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the date and time when Change Token button is clicked

  Scenario: Click and verify the Logout button
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Click and verify the Logout button

  Scenario: Validate the content of the Home screen
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the content of the Home screen

  Scenario: Validate the number of cards present on the Home screen
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Cards present on the home screen

  Scenario: Validate the Autolytics Card on the Home screen
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Autolytics Cards present on the home screen

  Scenario: Validate the Autolytics Card Cotent
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify the Autolytics Card Content

  Scenario: Validate the Bridge Token Card Present on the home screen
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Verify if the Bridge token card is visible

  Scenario: Validate the content of Bridge Token Card
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Validate the content of the Bridge Token card

  Scenario: Validate the alert ,username and status when user login
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Validate alert ,username and status of the window button

  Scenario: Check if the change token button is clickable or not
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Validate if there is change token button available ,if so click it

  Scenario: Signup screen
    Given You are on the Sign up screen
    Then Click on the Sign up Button
    And Enter random username
    Then Enter all the fields and Validate the status

  Scenario: Autolytics Screen
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Click on the Autolytics screen
    And Click on Create Report Tab
    Then Open few tabs 4
    And Click on SLide left button
    Then Click on the SLide most Right button
    And Click on the slide to next left button
    Then Click on the Slide to next right button
    And Validate the active tabs

  Scenario: Autolytics screen when there are no params passed in createReport
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    And Enter Password
    Then Click on the Autolytics screen
    And Click on createReport with no params

#  Scenario: Add a new tab in the browser
#    Given You are on the login screen
#    Then Enter username as "arpit.mishra"
#    Then Enter Password
#    Then Open a new tab

  Scenario: Open a new tab in Ignito Mode
    Given You are on the login screen
    Then Enter username as "arpit.mishra"
    Then Enter Password
    And Logout the Account

  Scenario Outline: Launch login and logout jewel dashboard
    Given user clicks on logIn button and closes it
    Then user again clicks on logIn button and enters <Username> and <Password>
    Then user navigates back after loggin in
    Examples:
      | Username     | Password  |
      | arpit.mishra | arpit1234 |
#
  Scenario: Launch jewel and check url of jewel and pricing
    Given validating url of jewel
    Then click on pricing
    Then validate pricing url
#
  Scenario Outline: Clicking on facebook logo and validating url
    Given click on facebook logo validate url <facebook>
    Examples:
      | facebook                              |
      | https://www.facebook.com/gemecosystem |

  Scenario Outline: Clicking on twitter logo and validating url
    Given click on twitter logo and validate url <twitter>
    Examples:
      | twitter                          |
      | https://twitter.com/gemecosystem |
#
  Scenario Outline: Clicking on instagram logo and validating the url
    Given click on instagram logo and validate url <insta>
    Examples:
      | insta                                   |
      | https://www.instagram.com/gemecosystem/ |
#
  Scenario Outline: Clicking on linkedin logo and validating url
    Given click on linkedin logo and validate url <linked>
    Examples:
      | linked                   |
      | https://www.linkedin.com |
#
  Scenario: Clicking on jewel dashboard logo and validate redirecting
    Given click on jewel dashboard button
#
  Scenario Outline: Clicking on gemPYP
    Given click on gemPYP and validate url <pyp>
    Examples:
      | pyp                              |
      | https://gempyp.gemecosystem.com/ |
#
#  Scenario Outline: Clicking on gemPRF
#    Given click on gemPRF and validate url <prf>
#    Examples:
#      | prf                              |
#      | https://gemprf.gemecosystem.com/ |
#
  Scenario Outline: Clicking on gemJAR
    Given click on gemJAR and validate url <jar>
    Examples:
      | jar                              |
      | https://gemjar.gemecosystem.com/ |
#
  Scenario: Click on pricing logo
    Given click on pricing button
#
  Scenario Outline: Validate sign up of already registered user
    Given click on signup
    Then enter "<name>" "<last>" "<user>" "<email>" "<pass>" "<cpass>" "<company>"
    Examples:
      | name  | last   | user         | email                            | pass      | cpass     | company |
      | arpit | mishra | arpit.mishra | arpit.mishra@geminisolutions.com | arpit1234 | arpit1234 | Gemini  |

  Scenario Outline: Validating sorting on Autolytics columns
    Given click on login and enter <username> and <password>
    Then click on autolytics and create report
    Then select report name
    Then select project name
    Then select enviroment
    Then select date range and click on generate
    Then validate sorting of numbers
    Examples:
      | username     | password  |
      | arpit.mishra | arpit1234 |
#
  Scenario Outline: Validate filters of suite run report
    Given click on login and enters <usernames> and <passwords>
    Then click on autolytics and create report
    Then select report names
    Then select project names
    Then select enviroment
    Then select date range and click on generates
    Then click on copy button and check if report opens in new tab and click on new tab button and validate of shared report
    Then click on filter status and select pass
    Examples:
      | usernames    | passwords |
      | arpit.mishra | arpit1234 |
#
  Scenario Outline:Validate new filers of suite summary report
    Given click er clickon loginnn and entersss <usernamess> and <passwordss>
    Then validate enviroment filter
    Then validate pie chart filter
    Examples:
      | usernamess   | passwordss |
      | arpit.mishra | arpit1234  |
#
  Scenario Outline:Validate the edit report button
    Given uss on loginnnn
    Then validate edit report button and check you're report selected has been generated or not <report_gen>
    Examples:
      | report_gen       |
      | Suite Run Report |
#
  Scenario Outline:Check if filters applied are still there on the shared report link
    Given usserr cicks onn loginnnn
    Then validate the filter on the share report <sharedReport>
    Examples:
      | sharedReport  |
      | Shared Report |
#
  Scenario Outline:Check for Suite Diagnose Report and validate A filter of it
    Given user logs in again
    Then Generates Suite Diagnose Report <sdr>
    Then validate filter
    Examples:
      | sdr                   |
      | Suite Diagnose Report |
#
  Scenario Outline:Check for Test Diagnose Report and vaidate a filter of it
    Given user logs in again for Test Diagnose Report
    Then Generates Test Diagnose report <tdr>
    Then validates a filter
    Examples:
      | tdr                      |
      | Testcase Diagnose Report |
#
  Scenario Outline:Check for Testcase Run Report and validate a filter of it
    Given user logs in for Testcase Run Report
    Then Generates Testcase Run Report <trr>
    Then validatess a filter
    Examples:
      | trr                 |
      | Testcase Run Report |
#
  Scenario Outline:Check for Testcase Summary Report and validate filter of it
    Given user logs in for Testcase Summary Report
    Then Generates Testcase Summary Report <tsr>
    Then validate a filterr
    Examples:
      | tsr                     |
      | Testcase Summary Report |
########################################################################################
#
  Scenario: Suite Pill check
    Given Verify on first rendering only suit pill is displayed
#
  Scenario: Testcase Pill check
    Given Verify on first rendering only suit pill is displayed
    Then test case pill isDisplayed
#
  Scenario: Testcase Pill Suite ID validation
    Given Verify on first rendering only suit pill is displayed
    Then validate suite id in testcase pill
#
  Scenario: Testcase Pill Suite Name validation
    Given Verify on first rendering only suit pill is displayed
    Then validate suite name in testcase pill
#
  Scenario: Testcase Pill Total Test case validation
    Given Verify on first rendering only suit pill is displayed
    Then total test case validation
#
  Scenario: Executing suite and validating test case count
    Given Verify on first rendering only suit pill is displayed
    Then validate test case count
##
  Scenario Outline: Executing suite when test case count is Zero
    Given Verify on first rendering only suit pill is displayed
    Then validate test case count is zero <zero>
    Examples:
      | zero                                                              |
      | 0 Testcase(s) Found. Create/Add new Testcase(s) to execute Suite. |
#
  Scenario: Executing the suite
    Given Verify on first rendering only suit pill is displayed
    Then enter values in play icon
    Then click on link and validate values in that
#
  Scenario: Validate number of records displayed with actual record (suite pill case)
    Given Verify on first rendering only suit pill is displayed
    Then Validate the record in suite tab
#
  Scenario: Validate number of records displayed with actual record (testcase pill case)
    Given Verify on first rendering only suit pill is displayed
    Then Validate the record in testcase tab

  Scenario: Sorting check in Suite pill
    Given Verify on first rendering only suit pill is displayed
    Then Check sorting in suite pill
#
  Scenario: Sorting check in Test case pill
    Given Verify on first rendering only suit pill is displayed
    Then Check sorting in test case pill
#
  Scenario: Filter check for Suite pill
    Given Verify on first rendering only suit pill is displayed
    Then check filter for suite pill
#
  Scenario: Filter check for Test case pill
    Given Verify on first rendering only suit pill is displayed
    Then check filter for testcase pill
#
  Scenario Outline: Alert check for Test case pill when there is 0 test case count
    Given Verify on first rendering only suit pill is displayed
    Then Check the alert in testcase tab <alert1>
    Examples:
      | alert1                                                              |
      | No Testcase(s) FoundClick on Create Testcase to add new Testcase(s) |
##
  Scenario: Check if view testcase is working
    Given Verify on first rendering only suit pill is displayed
    Then Validate button of testcase tab
#
  Scenario: Create suite button check
    Given Verify on first rendering only suit pill is displayed
    Then check create suite button is present and clickable
#
  Scenario: Upload button check
    Given Verify on first rendering only suit pill is displayed
    Then check upload button is present and clickable
#
  Scenario Outline: Create new suite when Suite Name is not unique
    Given Verify on first rendering only suit pill is displayed
    Then Create a new suite by clicking on create suite button and validate if it's created or not <allField>
    Examples:
      | allField                                     |
      | Suite with this name exists for this project |
#
  Scenario Outline:  Create new suite when Suite Name is not unique (CAPS LOCK CASE)
    Given Verify on first rendering only suit pill is displayed
    Then Create a neww suite by clicking on create suite button and validate if it's created or not <allField>
    Examples:
      | allField                                     |
      | Suite with this name exists for this project |
#
  Scenario Outline: Create new suite when Suite Name is unique
    Given Verify on first rendering only suit pill is displayed
    Then Create a new suite when name is unique <suiteCreated>
    Examples:
      | suiteCreated                 |
      | Suite Created Successfully ! |
#
  Scenario: Import from library check
    Given Verify on first rendering only suit pill is displayed
    Then Validate the testcase imported appears on grid
#
  Scenario: Create testcase button check
    Given Verify on first rendering only suit pill is displayed
    Then Validate the test case created appears on grid
#
  Scenario Outline: Create testcase button check when testcase name is left empty
    Given Verify on first rendering only suit pill is displayed
    Then validate the alert when testcase name is left empty <testCaseNotCreated>
    Examples:
      | testCaseNotCreated                               |
      | Testcase Name, Category and Type Cannot be Empty |
#
  Scenario: Edit column pencil option check when testcase name is modified
    Given Verify on first rendering only suit pill is displayed
    Then Validate pencil option on the grid
#
  Scenario: Edit column pencil option check when category name is modified
    Given Verify on first rendering only suit pill is displayed
    Then Validate pencil option on the grid category modify
#
  Scenario: Edit column pencil option check when type is modified
    Given Verify on first rendering only suit pill is displayed
    Then Validate pencil option on the grid type modify
#
  Scenario: Edit column pencil option check when one of the headers is added
    Given Verify on first rendering only suit pill is displayed
    Then validate parameters has been added or not
#
  Scenario Outline: Edit column pencil option check when all the headers are removed and only run_flag is present
    Given Verify on first rendering only suit pill is displayed
    Then validate edit when all the headers are removed <testcaseUpdated>
    Examples:
      | testcaseUpdated                 |
      | Testcase updated successfully ! |

  Scenario: Integrate GIT when no url is passed
    Given Verify on first rendering only suit pill is displayed
    Then validate git when no url is passed
#
  Scenario Outline: Integrate GIT when wrong url is passed
    Given Verify on first rendering only suit pill is displayed
    Then validate git when wrong url is passed <notestfound>
    Examples:
      | notestfound                                                         |
      | No Testcase(s) FoundClick on Create Testcase to add new Testcase(s) |
#
  Scenario Outline: Integrate GIT when wrong url is passed and check if repo is private (enter wrong credentials in token)
    Given Verify on first rendering only suit pill is displayed
    Then validate git when wrong token is passed <notestFound>
    Examples:
      | notestFound                                                         |
      | No Testcase(s) FoundClick on Create Testcase to add new Testcase(s) |

  Scenario Outline: Integrate GIT when correct url is passed (repo is private) but token passed is wrong
    Given Verify on first rendering only suit pill is displayed
    Then integrate git when wrong auth is passed <alertNotest>
    Examples:
      | alertNotest                                                         |
      | No Testcase(s) FoundClick on Create Testcase to add new Testcase(s) |
#
  Scenario: Integrate GIT when correct url is passed (repo is private)
    Given Verify on first rendering only suit pill is displayed
    Then validate git when correct private repo is passed

  Scenario: Integrate GIT and check remove git button
    Given Verify on first rendering only suit pill is displayed
    Then check remove git button
##
  Scenario: Integrate GIT when correct url is passed (repo is public)
    Given Verify on first rendering only suit pill is displayed
    Then validate git when correct url is passed

  Scenario Outline: Integrate GIT and check Upload/Reload GIT button
    Given Verify on first rendering only suit pill is displayed
    Then check upload git button <update>
    Examples:
      | update                           |
      | Testcase(s) updated successfully |

  Scenario: Integrate GIT and check reload jar button
    Given Verify on first rendering only suit pill is displayed
    Then check reload jar button

  Scenario: Test the lambda feature
    Given Verify on first rendering only suit pill is displayed
    Then Create suite
    Then execute suite on ui













