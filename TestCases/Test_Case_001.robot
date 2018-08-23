*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

*** Test Cases ***
First Test: Google Search
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text   name:q  Originate.com
    Click Button  xpath://input[@type="submit"]
    # This part works for if you want to automate "I'm feeling Lucky"id=gbqfbb
    Click Link  xpath://a[@href="https://www.originate.com/"]

Second Test: Check Header Links
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

Third Test: Scroll
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link  xpath://a[text()='Services']
    Sleep       2s
    Scroll Page To Location    0   3000
    Sleep       3s
    Click Link  xpath://a[text()='Beliefs']
    Sleep       3s
    Scroll Page To Location    0   3000
    Sleep       3s
    Click Link  xpath://a[text()='People']
    Sleep       3s
    Scroll Page To Location    0   4000
    Sleep       3s
    Click Link  xpath://a[text()='Join']
    sleep       3s
    Scroll Page To Location    0   3000
    Sleep       3s
    Click Link  xpath://a[text()='Thinking']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s

Fourth Test: Check Footer Links
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link  xpath://a[text()='Contact']
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link  xpath://a[text()='Join']
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link  xpath://a[text()='Privacy Policy']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link   xpath://a[@href="https://github.com/originate"]
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link   xpath://a[@href="https://www.instagram.com/weareoriginate/"]
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link   xpath://a[@href="https://www.facebook.com/originatelabs/"]
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link   xpath://a[@href="https://twitter.com/originatelabs"]
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Click Link   xpath://a[@href="https://www.linkedin.com/company/originate"]
    Sleep       2s
    Go Back
    Click Link  xpath://a[text()='Work']
    Sleep       2s
    Scroll Page To Location    0   2000
    Sleep       3s
    Page should contain  © 2018 ORIGINATE, INC.

# This is currently being commented out due to the nature of how the Originate Website works.
# The Website does not use <id>'s, which is a problem. This complicates being able to automate input textfields
# and selecting text fields. Below is a sample of what I tried to do.
#   Test: Input Field Test
#   Click Link  xpath://a[text()='Services']
#   Sleep       2s
#   Scroll Page To Location    0   3000
#   Sleep       3s
#   Click Element  name:Your name


