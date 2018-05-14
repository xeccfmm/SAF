@mercury
Feature: As a user of Mercury Tours, I should be able to login into the Mercury Tours website and make several flight reservations

  Background: Initialize connection to Mercury Tours website
Given login to Mercury Tours with browser="chromedriver"
#Given login to Mercury Tours with browser="saucelabdriver"
# And configuration options="SAUCELABDRIVER_BROWSER=chrome;SAUCELABDRIVER_VERSION=latest-1"
And configuration options="VERBOSE=false"
And set maximum retries=3    

  @smoketest @screen_record
  Scenario: Flight reservations 1
    Given below list of itineraries
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
      | One Way    |              3 | Zurich     | August      |        23 | Acapulco    | September   |        23 | Business     | Pangea Airlines  | Doe          | Jane         |  2345 |
#      | Round Trip |              2 | New York   | September   |         1 | London      | October     |         3 | Economy      | Unified Airlines | Doe          | John         |  1234 |
#    And configuration options="VERBOSE=false"
    When reserving them
    Then above scenario should succeed

  @outlinetest
  Scenario Outline: Flight reservations 2
    Given I am reserving a trip with type="<TripType>"
    And number of passengers=<PassengerCount>
    And Departing from "<DepartDest>"
    And Depart month="<DepartMonth>"
    And Depart day=<DepartDay>
    And Arriving to "<ArrivalDest>"
    And Return month="<ReturnMonth>"
    And Return day=<ReturnDay>
    And Service Class="<ServiceClass>"
    And Airline="<AirLine>"
    And Billing Last Name="<BillingLname>"
    And Billing First Name="<BillingFname>"
    And Credit Card number=<CcNum>
    When reserving the trip
    Then above scenario should succeed
    
    Examples: One Way Trips
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
      | One Way    |              3 | Zurich     | August      |        10 | Acapulco    | March       |        28 | Business     | Pangea Airlines  | Doe          | Brenda       |  5432 |
    
    Examples: Round Trips
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
      | Round Trip |              2 | New York   | September   |         1 | London      | May         |         6 | Economy      | Unified Airlines | Doe          | Bill         |  4321 |
       