@nexen_app_store
Feature: As a user of Nexen Gateway, I would like to login into Nexen Gateway and validate APP Store currently located at https://nexenappstore.qa.bnymellon.com

  Background: Initialize connection to Nexen in given environment
    #    Given screen resolution height=300
    #    Given runtime property="AAA" and value="bbb"
    # Given login to Nexen with environment="PROD" and usertype="internal" and browser="firefox"
    Given login to Nexen with browser="chrome"

  #Given login to Nexen
  #    And send email with from address="BDD@bnymellon.com" and subject="TEST TEST" and to
  #                     | azim.ali@bnymellon.com |
  @scenario_1 @screen_snapshots
  Scenario: Exercise Search function on Home Tab of APP Store
    Given below list of apps on tab="home"
      #Given below list of apps
      | suade    |
      | lockbox  |
      | data3    |
      | fund     |
      | heckyl   |
      | briefing |
      | aaa      |
      | eagle    |
      | geophy   |
    #And screen resolution height=800 and width=600
    #               And snapshot each screen???
    #And runtime property="ZZZ" and value="yyy"
    #And send email with from address="BDD@bnymellon.com" and subject="TEST TEST" and to
    #                  | azim.ali@bnymellon.com |
    When searching for applications
    Then scenario should succeed

  @scenario_2
  Scenario: Exercise Search function on MyApps Tab of APP Store
    Given list of apps on tab="myapps"
      | suade    |
      | lockbox  |
      | data3    |
      | fund     |
      | heckyl   |
      | briefing |
      | aaa      |
      | eagle    |
      | geophy   |
    #And screen resolution height=600 and width=800
    When searching for applications
    Then scenario should succeed

  @scenario_3 @screen_snapshots
  Scenario: Validate specific apps on MyApps Tab of APP Store
    Given list of apps on tab="myapps"
      | Portfolio Carbon Footprinting |
      | Spreadsheet Direct            |
    When validating them
    Then scenario should succeed

  @scenario_4
  Scenario: Validate all apps on Home Tab of APP Store
    Given apps on tab="home"
    When validating them
    Then scenario should succeed

  @test_this
  Scenario Outline: Check Apps for More Apps Subscription
    Given I access app "<appName>" on tab "<appTab>"
    When I check for more apps with number=<moreAppsNumber>
    And check for slides with number=<slideNumber>
    And check for more app names contained in "<moreAppsContained>"
    Then application check should "<status>"

    Examples: 
      | appName            | appTab | moreAppsNumber | slideNumber | moreAppsContained                                          | status  |
      | Eagle Portfolio    | Home   |              0 |           6 |                                                            | succeed |
      | Portfolio Platform | Home   |              1 |           2 | Jeckyl Portfolio Widgets                                   | fail    |
      | Spreadsheet Direct | MyApps |              3 |           2 | Corporate Actions, Liquidity Direct (SM), Morning Briefing | succeed |

  @test_this2
  Scenario Outline: Validate a select list of Apps
    Given I access app "<appName>" on tab "<appTab>"
    When validating it
    Then application check should "<status>"

    Examples: 
      | appName                   | appTab | status  |
      | Corporate Actions         | Home   | succeed |
      | Liquidity DIRECT (SM)     | Home   | succeed |
      | Portfolio Platform        | Home   | succeed |
      | Portfolio Carbon          | Home   | succeed |
      | Lockbox                   | Home   | succeed |
      | Morning Briefing          | Home   | succeed |
      | Heckyl Portfolio Widgets  | Home   | succeed |
      | Eagle Portfolio           | Home   | succeed |
      | Spreadsheet Direct        | Home   | succeed |
      | Geophy Investor Solutions | Home   | succeed |
      | Suade                     | Home   | succeed |
      | Enterprise Reporting      | Home   | succeed |
      | Cash Inquiry              | Home   | succeed |
      | Sybenetix                 | Home   | succeed |
      | Credit-Vision             | Home   | succeed |
      | Some App                  | Home   | fail    |
#Scenario Outline:Multiply two numbers
#Given I have entered "<num_1>" into the calculator
#And I press the multiply button
#And I have entered "<num_2"> into the calculator
#And I press the equal button
#Then the result should be "<result>" on the screen
#Examples:
#|num_1 | num_2 | result |
#| 1    | 1     | 1      |
#| 2    | 2     | 4      |
