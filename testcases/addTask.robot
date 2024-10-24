*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
# ${url_name}    https://taskboard.rspos.dev/login
${url_name}    https://www.google.co.in
 
*** Test Cases ***
open browser and enter credentials
    Open Browser    ${url_name}    chrome    executable_path=C:\\Users\\tai-0\\OneDrive\\Documents\\Taskboard\\source folder\\chromedriver.exe
    Maximize Browser Window
    Sleep    2s
    Wait Until Element Is Visible    xpath://*[@id="email"]    5s
    Input Text    xpath://*[@id="email"]    thinkailabs.dev@gmail.com
 
    Wait Until Element Is Visible    xpath://*[@id="password"]    5s
    Input Text    xpath://*[@id="password"]    1234567890
 
    Wait Until Element Is Visible    xpath://button[text()="Login"]    5s
    Click Element    xpath://button[text()="Login"]  
 
    Sleep    5s
 
    #  Opening StatusSheet Tab
    Wait Until Element Is Visible    xpath://ul//li[7]    5s
    Click Element    xpath://ul//li[7]                    
    Sleep    5s
    #  Clicking on Create Team
    Wait Until Element Is Visible    xpath://*[text()="Select User "]    5s
    Click Element    xpath://*[text()="Select User "]
    Sleep    5s
    #  Selecting User
    Wait Until Element Is Visible    xpath://ul//li//span[text()="ThinkAI"]    5s
    Click Element    xpath://ul//li//span[text()="ThinkAI"]
    Sleep    5s
    #  Clicking on Add Task button
    Wait Until Element Is Visible    xpath://*[text()=" Add Task"]    5s
    Click Element    xpath://*[text()=" Add Task"]
    Sleep    5s
    #  Adding Task Details
    Wait Until Element Is Visible    xpath://input[@id="estimatedHours"]    5s
    Click Element    xpath://input[@id="estimatedHours"]
    Input Text    xpath://input[@id="estimatedHours"]    8
    Sleep    5s
    #  Entering Date
    Wait Until Element Is Visible    xpath://input[@id="assignedDate"]    5s
    Click Element    xpath://input[@id="assignedDate"]
    Input Text    xpath://input[@id="assignedDate"]    2024-10-18
    #  Selecting Project Name
    Wait Until Element Is Visible    xpath://input[@id="projectName_0"]    5s
    Click Element    xpath://input[@id="projectName_0"]
    Input Text    xpath://input[@id="projectName_0"]    Task
    Press Keys    xpath://input[@id="projectName_0"]   ENTER
    #  Entering Task Name
    Wait Until Element Is Visible    xpath://input[@id="taskName_0"]    5s
    Click Element    xpath://input[@id="taskName_0"]
    Input Text    xpath://input[@id="taskName_0"]    working on login page
    Sleep    2s
    #  Clicking AssignedBy option
    #  Wait Until Element Is Visible    xpath:(//*[@class="ant-select-selection-search"]//input)[2]    10s
    # Click Element    xpath:(//*[@class="ant-select-selection-search"]//input)[2]
    Press Keys    xpath://input[@id="taskName_0"]    TAB

    Press Keys    xpath:(//*[@class="ant-select-selection-search"]//input)[2]   Enter
    Sleep    2s
    Wait Until Element Is Visible    xpath://div[text()="srikanth"]    5s
    Click Element    xpath://div[text()="srikanth"]
    # #  Clicking on Add Task
    # Wait Until Element Is Visible    xpath://button//span[text()="+ Add Task"]    5s
    # Click Element    xpath://button//span[text()="+ Add Task"]
    #  Clicking on Submit
    Wait Until Element Is Visible    xpath://button//span[text()="Submit"]    5s
    Click Element    xpath://button//span[text()="Submit"]
    Sleep    5s
    Capture Page Screenshot    TaskAdded.png