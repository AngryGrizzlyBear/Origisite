*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com

*** Test Cases ***
First Test: Google Search
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text   name:q  Originate.com
    Click Button  xpath://input[@type="submit"]
    # This part works for if you want to automate "I'm feeling Lucky"id=gbqfbb
    Click Link  xpath://a[@href="https://www.originate.com/"]



    #I'll literally clean this up tomorrow. I just wanted to make sure that I managed to set this up right.


Second Test: Check Links
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Click Link  xpath://a[text()='Services']
    Sleep       2s
    Click Link  xpath://a[text()='Beliefs']
    Sleep       2s
    Click Link  xpath://a[text()='People']
    Sleep       2s
    Click Link  xpath://a[text()='Join']
    Sleep       2s
    Click Link  xpath://a[text()='Thinking']