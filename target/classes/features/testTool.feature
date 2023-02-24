Feature: Test Tool

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

#  Scenario: Integrate GIT and check reload jar button
#    Given Verify on first rendering only suit pill is displayed
#    Then check reload jar button

  Scenario: Test the lambda feature
    Given Verify on first rendering only suit pill is displayed
    Then Create suite
    Then execute suite on ui

  Scenario: Test the Email feature
    Given Verify on first rendering only suit pill is displayed
    Then Create suite
    Then Add an email
    Then execute suite on ui
    Then Verify email received

#  Scenario:Check s3 file viewer screen
#    Given Verify on first rendering only suit pill is displayed
#    Then check the json file

#  Scenario Outline: Sample-2
#    Given Set endpoint and method "<endpoint>" and "<Method>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint | Method | Expected_status |
#      | Gettt    | get    | 200             |

