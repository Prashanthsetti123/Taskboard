*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
# ${url_name}    https://taskboard.rspos.dev/login
${url_name}    https://www.google.co.in
 
*** Test Cases ***
Open Browser and maximize the window
    Open Browser  ${url_name}  chrome    executable_path=C:\\Users\\tai-0\\OneDrive\\Documents\\Taskboard\\source folder\\chromedriver.exe
    Maximize Browser Window
    Sleep    2s
    