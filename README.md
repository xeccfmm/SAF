# SAF - Selenium Automation Framework
### A collection of open source testing tools to facilitate quick turnaround on automation testing
### Architecture view:
![](../master/Conceptual.gif)


## This repository shows some of the features of the framework:
### BDD (Cucumber) 
- See the cukes/cukes_output/ directory for sample test result reports generated from a run
- See the cukes/features directory for sample feature files that can be executed
- Snapshots, video and log files for the session included
  
### TDD (TestNG)
- See the testng_output directory for a zip file containing test result reports generated from a run
- Snapshots, video and log files for the session included
  
### JavaDoc
- See the javadoc.zip for further documentation - due to the restriction of space on GitHub, files are zipped :(
- Source code for the application MercuryTours can be viewed from the package com.selenium.framework.qa_automation.pageobject.mercurytours

### Miscellaneous Files
- Several application property files in the master root directory demonstrate how the framework uses a configuration-driven approach to facilitating customization by externalizing related properties
- The SeleniumDemo_OR.properties and the mercurytours_objectRepository.xml shows the persistence of object references in a properties and XML format
