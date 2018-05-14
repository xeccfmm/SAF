$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("mercurytours/setup_flight_reservations1.feature");
formatter.feature({
  "line": 2,
  "name": "As a user of Mercury Tours, I should be able to login into the Mercury Tours website and make several flight reservations",
  "description": "",
  "id": "as-a-user-of-mercury-tours,-i-should-be-able-to-login-into-the-mercury-tours-website-and-make-several-flight-reservations",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@mercury"
    }
  ]
});
formatter.before({
  "duration": 643885207,
  "status": "passed"
});
formatter.before({
  "duration": 66006,
  "status": "passed"
});
formatter.before({
  "duration": 825676303,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Initialize connection to Mercury Tours website",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "login to Mercury Tours with browser\u003d\"chromedriver\"",
  "keyword": "Given "
});
formatter.step({
  "comments": [
    {
      "line": 6,
      "value": "#Given login to Mercury Tours with browser\u003d\"saucelabdriver\""
    },
    {
      "line": 7,
      "value": "# And configuration options\u003d\"SAUCELABDRIVER_BROWSER\u003dchrome;SAUCELABDRIVER_VERSION\u003dlatest-1\""
    }
  ],
  "line": 8,
  "name": "configuration options\u003d\"VERBOSE\u003dfalse\"",
  "keyword": "And "
});
formatter.step({
  "line": 9,
  "name": "set maximum retries\u003d3",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "chromedriver",
      "offset": 37
    }
  ],
  "location": "MercuryTours_Cucumber_KeyWords.mercury_login_main(String)"
});
formatter.result({
  "duration": 9801121076,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "VERBOSE\u003dfalse",
      "offset": 23
    }
  ],
  "location": "Cukes_Default_KeyWords.configuration_options(String)"
});
formatter.result({
  "duration": 1782884,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "3",
      "offset": 20
    }
  ],
  "location": "Cukes_Default_KeyWords.set_max_retries(int)"
});
formatter.result({
  "duration": 931009,
  "status": "passed"
});
formatter.scenario({
  "line": 12,
  "name": "Flight reservations 1",
  "description": "",
  "id": "as-a-user-of-mercury-tours,-i-should-be-able-to-login-into-the-mercury-tours-website-and-make-several-flight-reservations;flight-reservations-1",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 11,
      "name": "@smoketest"
    },
    {
      "line": 11,
      "name": "@screen_record"
    }
  ]
});
formatter.step({
  "line": 13,
  "name": "below list of itineraries",
  "rows": [
    {
      "cells": [
        "TripType",
        "PassengerCount",
        "DepartDest",
        "DepartMonth",
        "DepartDay",
        "ArrivalDest",
        "ReturnMonth",
        "ReturnDay",
        "ServiceClass",
        "AirLine",
        "BillingLname",
        "BillingFname",
        "CcNum"
      ],
      "line": 14
    },
    {
      "cells": [
        "One Way",
        "3",
        "Zurich",
        "August",
        "23",
        "Acapulco",
        "September",
        "23",
        "Business",
        "Pangea Airlines",
        "Doe",
        "Jane",
        "2345"
      ],
      "line": 15
    }
  ],
  "keyword": "Given "
});
formatter.step({
  "comments": [
    {
      "line": 16,
      "value": "#      | Round Trip |              2 | New York   | September   |         1 | London      | October     |         3 | Economy      | Unified Airlines | Doe          | John         |  1234 |"
    },
    {
      "line": 17,
      "value": "#    And configuration options\u003d\"VERBOSE\u003dfalse\""
    }
  ],
  "line": 18,
  "name": "reserving them",
  "keyword": "When "
});
formatter.step({
  "line": 19,
  "name": "above scenario should succeed",
  "keyword": "Then "
});
formatter.match({
  "location": "MercuryTours_Cucumber_KeyWords.mercury_itineraryList(ItineraryRow\u003e)"
});
formatter.result({
  "duration": 7439685,
  "status": "passed"
});
formatter.match({
  "location": "MercuryTours_Cucumber_KeyWords.mercury_reserveItineraries()"
});
formatter.result({
  "duration": 25455600021,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {},
    {
      "val": "succeed",
      "offset": 22
    }
  ],
  "location": "Cukes_Default_KeyWords.scenario_result(String,String)"
});
formatter.result({
  "duration": 1545482,
  "status": "passed"
});
formatter.after({
  "duration": 692148,
  "status": "passed"
});
formatter.after({
  "duration": 5237002158,
  "status": "passed"
});
});