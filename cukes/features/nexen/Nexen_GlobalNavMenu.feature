@nexen_menu
Feature: As a user of Nexen Gateway, I would like to login into Nexen Gateway and access the Nexen Global Nav Menu and Link options

  Background: Initialize connection to Nexen
    Given login to Nexen with environment="UAT" and usertype="internal" and browser="chrome"
    And runtime property="verbose" and value="false"
#Functional tags defines are @screen_record, @screen_snapshots and @Ignore

  @scenario_0 
  Scenario: Access all available menu options and menu links
    Given access to all menus
    When accessing the menus
    Then above scenario should succeed

  @scenario_0_0 
  Scenario: Access all available menu options and menu links except for a select few
    Given access to all menus
    And except for menu list
      | APP STORE        |
      | Sign Out     |    
    When accessing the menus
    Then above scenario should succeed

  @scenario_0_1 @Ignore
  Scenario: Access all available menu links
    Given access to all links
    When accessing the menus
    Then above scenario should succeed

  @scenario_0_2
  Scenario: Access all available menu options
    Given access to all menu options
    When accessing the menus
    Then above scenario should succeed

  @scenario_1 @screen_record
  Scenario: Access a selected list of menu Options and menu Links
    Given below list of menu options
      | APP STORE        |
      | SUPPORT          |
      | USER PROFILE     |
      | CONNECT LINKS    |
      | STANDARD REPORTS |
    When accessing the menus
    Then above scenario should succeed
    
 @scenario_2
 Scenario: Access a specific menu
    Given access to menu="Standard Reports"
    When accessing the menu
    Then above scenario should succeed

  @scenario_3 @screen_snapshots 
  Scenario Outline: Use a scenario outline to access specific menus
    Given I access menu "<menu>"
    #    And set execute access to XPATH
    When accessing the menus
    Then above scenario should succeed

    Examples: 
      | menu             |
      | APP STORE        |
      | USER PROFILEabc  |
      | STANDARD REPORTS |
      | CONNECT LINKS    |
      | SUPPORT          |