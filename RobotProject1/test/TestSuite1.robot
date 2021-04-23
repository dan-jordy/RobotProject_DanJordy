*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup    
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup    Log   I am inside Test Setup
Test Teardown    Log    i am inside Test Teardown    


*** Test Cases ***
MyFirstTest
    Log    Hello World!
   
FirstSeleniumTest
       
    Open Browser    https://opensource-demo.orangehrmlive.com/    ff
    Set Browser Implicit Wait    5
    Input Text    name=txtUsername    Admin  
    Input Text    name=txtPassword    admin123     
    Press Keys    id=btnLogin    ENTER
       
              
    #Click Button  name=btnK    
    Sleep       7    
    Close Browser
    Log    Test Completed    
  
  


SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    ${URL}    ff
    Set Browser Implicit Wait    5
    LoginKW
    #Input Text      name=txtUsername    @{CREDENTIALS}[0]
    #Input Text      name=txtPassword    &{LGOINDATA}[password]    
    #Click Button    id=btnLogin     ENTER
    #Click Element    id="welcome      
    #Click Element   link=Logout        
    Log    Test Completed   
    Log    This test was executed by %{username} on %{os}    
    Sleep    5    
    Close Browser
    
*** Variables ***

${URL}     https://opensource-demo.orangehrmlive.com/
#Scalar Variable

@{CREDENTIALS}    Admin    admin123
#List Variable

&{LGOINDATA}    username=Admin    password=admin123
#Dictionary Variable


*** Keywords ***
LoginKW
    Input Text      name=txtUsername    @{CREDENTIALS}[0]
    Input Text      name=txtPassword    &{LGOINDATA}[password]    
    Click Button    id=btnLogin     ENTER
    