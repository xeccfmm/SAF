@mercury_new 

Feature: As a user of Mercury Tours, I should be able to login into the Mercury Tours website and make several flight reservations

Background: Initialize connection to Mercury Tours website
Given login to Mercury Tours with browser="chromedriver"
#Given login to Mercury Tours with browser="saucelabdriver"
#And configuration options="SAUCELABDRIVER_BROWSER=chrome;SAUCELABDRIVER_VERSION=latest-1"
And configuration options="VERBOSE=false"
And set maximum retries=3    

  @smoketest
  Scenario: Flight reservations 1
    Given below list of itineraries
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
      | One Way    |              3 | Zurich     | August      |        23 | Acapulco    | September   |        23 | Business     | Pangea Airlines  | Doe          | Jane         |  2345 |
#      | Round Trip |              2 | New York   | September   |         1 | London      | October     |         3 | Economy      | Unified Airlines | Doe          | John         |  1234 |
#    And configuration options="VERBOSE=false"
    And test id=1001
    When reserving them
    Then above scenario should succeed

#  Scenario: Flight reservations 2
#    Given below list of itineraries
#      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
#      | One Way    |              3 | Zurich     | August      |        10 | Acapulco    | March       |        28 | Business     | Pangea Airlines  | Doe          | Brenda       |  5432 |
#      | Round Trip |              2 | New York   | September   |         1 | London      | May         |         6 | Economy      | Unified Airlines | Doe          | Bill         |  4321 |
#    When reserving them
#    Then above scenario should succeed
