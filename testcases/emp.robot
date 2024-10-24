*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${url_name}    http://3.110.195.194:7091/

 
*** Test Cases ***
Open Browser and maximize the window
    Open Browser  ${url_name}  chrome    executable_path=C:\\Users\\tai-0\\OneDrive\\Documents\\Taskboard\\source folder\\chromedriver.exe
    Maximize Browser Window
    Sleep    3s
    Capture Page Screenshot    login_page.png


    