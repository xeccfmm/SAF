@nexen_pageobject
Feature: As a user of Nexen Gateway, I would like to validate all page object components

  Background: Initialize connection to Nexen
    Given login to Nexen with environment="UAT" and usertype="internal" and browser="chrome"

  @scenario_0 
  Scenario: Validate all components for available page objects
    Given access to all pages
    When validating the pages components
    Then above scenario should succeed
    
  @scenario_1 
  Scenario: Validate a specific page object
    Given access to page="ReportPage"
    When validating the page components
    Then above scenario should succeed

  @scenario_2 
  Scenario: Validate a selected list of page objects
    Given below list of page objects
      | LoginPage        |
      | HomePage          |
      | ReportPage     |
      | AppStorePage   |
    When validating the pages components
    Then above scenario should succeed

  @scenario_3 @screen_snapshots 
  Scenario Outline: Use a scenario outline to validate specific page objects
    Given I access page "<page_object>"
    When validating the page components
    Then above scenario should succeed

    Examples: 
      | page_object      |
      | LoginPage |
      | HomePage  |
      | ReportPage |
      | AppStorePage |      
 
 @scenario_2_5 
    Scenario: Use a scenario to validate specific page objects
      Given I access page "ReportPage"
      When validating the page components
     Then above scenario should succeed
 
 @scenario_3_5 @screen_snapshots 
   Scenario Outline: Use a scenario outline to validate specific page objects
     Given I access page "<page_object>"
     When validating the page components "<page_components>"
     Then above scenario should succeed
 
     Examples: 
       | page_object  | page_components |
       | LoginPage |UID,PWD,Loginsubmit |
       | HomePage  | all |
       | ReportPage | standardrptsbutton,savedrptsbutton,standardallrptsbutton |
       | AppStorePage | home.tab,myapps.tab,search.input,privacy_policy.link,terms_of_use.link |
      
      
 @scenario_4 @Ignore
 Scenario: Example BDD
   Given access to foo application
   When accessing foo
   Then above scenario should succeed
 
 