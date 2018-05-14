@mercury_template

Feature: As a user of Mercury Tours, I should be able to login into the Mercury Tours website and make several flight reservations

  Background: Initialize connection to Mercury Tours website
Given login to Mercury Tours with browser="chromedriver"
#Given login to Mercury Tours with browser="saucelabdriver"
# And configuration options="SAUCELABDRIVER_BROWSER=chrome;SAUCELABDRIVER_VERSION=latest-1"
And configuration options="VERBOSE=false"
#And set maximum retries=3    

  @smoketest_template 
  Scenario: Flight reservations 1
    Given below list of itineraries
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum |
      | One Way    |              3.0 | Zurich     | August      |        23 | Acapulco    | September   |        23 | Business     | Pangea Airlines  | Doe          | Jane         |  2345 |
#    And configuration options="VERBOSE=false"
    When reserving them
    Then above scenario should succeed

  @outlinetest_template @screen_record
  Scenario Outline: Flight reservations 2
    Given I am reserving a trip with type="<TripType>"
    And number of passengers="<PassengerCount>"
    And Departing from "<DepartDest>"
    And Depart month="<DepartMonth>"
    And Depart day="<DepartDay>"
    And Arriving to "<ArrivalDest>"
    And Return month="<ReturnMonth>"
    And Return day="<ReturnDay>"
    And Service Class="<ServiceClass>"
    And Airline="<AirLine>"
    And Billing Last Name="<BillingLname>"
    And Billing First Name="<BillingFname>"
    And Credit Card number="<CcNum>"
    And test id="<TestId>"
    And set maximum retries=3
    When reserving the trip
    Then above scenario should succeed
    
   Examples: Manual
      | TripType   | PassengerCount | DepartDest | DepartMonth | DepartDay | ArrivalDest | ReturnMonth | ReturnDay | ServiceClass | AirLine          | BillingLname | BillingFname | CcNum | TestId |
#Pre-processing of below directive:
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;log=y
#template file=c:\d_drive\work\programs\saf\cukes\features\mercurytours\setup_flight_reservations_aaa.template
#created feature file=c:\d_drive\work\programs\saf\cukes\features\mercurytours\setup_flight_reservations_aaa.feature
#Total xls rows=3
|One Way|3.0|Zurich|August|10.0|Acapulco|October|28.0|business|Pangea Airlines|Doe|Brenda|5432.0|2002.0|
|One Way|2.0|New York|August|10.0|Acapulco|September|28.0|business|Pangea Airlines|Doe|Bill|2345.0|2003.0|
|One Way|2.0|London|August|10.0|Acapulco|November|28.0|business|Pangea Airlines|Doe|Brandy|1188.0|2004.0|



#      | One Way    |              3.0 | Zurich     | August      |        10 | Acapulco    | March       |        28 | Business     | Pangea Airlines  | Doe          | Brenda       |  5432 |
#       | Round Trip |              2 | New York   | September   |         1 | London      | May         |         6 | Economy      | Unified Airlines | Doe          | Bill         |  4321 |

#Various ways of calling the dataprovider directive - besides filtering by rows (see Filter Sample tab dataprovider example), you can also 
#choose the columns to return by specifying them
#see example below where TripType, AirLine, and CcNum columns can be specified - the application will automatically detect the columns 
#to use
#Pending are: CSV and JDBC dataprovider
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;log=y
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;tab=Filter_Sample;log=y
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;rangename=tours;log=y
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;tab=Tables;rangename=tours;log=y
#    Examples: XLS Extract
#    | TripType   | AirLine | CcNum |
#*dataprovider=xls;file=${CUCUMBER_FEATURE_DIR}/mercurytours/mercurytours.xlsx;tab=Filter_Sample;log=y
