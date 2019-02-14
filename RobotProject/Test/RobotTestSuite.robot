*** Settings ***
Library  SeleniumLibrary    

Suite Setup     Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    Smoke Test
                       
*** Test Cases ***
   

MYFirstTest
    Log    HEllo World 
     
    [Tags]    sanity
 MYSecondTest
    Log    I am inside second test
    Set Tags    regression1  
    Remove Tags    regression1
    
 MYThirdTest
    Log    I am inside third test  
    
MY5thTest
    Log    I am inside 5th test  
      
    
# MySeleniumTest
    # Create Webdriver    Chrome  executable_path=/Users/vitaliyyarovyi/eclipse-workspace/Test-Selenium/chromedriver 
    # Go To    https:/google.com
    # Set Browser Implicit Wait    5 
    # Input Text    name=q    Robot Framework Keywords
    # Press Keys    name=q  ENTER
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log  TEST COMPLETED
    
# SimpleLoginTest
    # Create Webdriver    Chrome  executable_path=/Users/vitaliyyarovyi/eclipse-workspace/Test-Selenium/chromedriver
    # Go To   ${URL}
    # LoginKW
    # Close Browser
    # Log  This test was executed   
    
    
*** Variables ***
${URL}     https://facebook.com
@{Credentials}      vitaliy.yarovyi@gmai.com      admin123
&{LOGINDATA}     login=admin    password=Tokibotrob2&


*** Keywords ***
LoginKW
    Input Text    id=email    @{Credentials}[0]
    Input Password    id=pass    &{LOGINDATA}[password]
    Click Element   id=loginbutton   
