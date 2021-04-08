*** Settings ***

Resource            ../Keywords/login_logout.robot


Suite Setup                     Open Browser to login page
Suite Teardown                  Close browser

*** Test Cases ***

Verify login and logout
   [Documentation]              Login and logout
   [Tags]                       Login
   Login:                       ${EMAIL}    ${PASSWORD}
   element should be visible    ${MY_ACCOUNT}
   Logout
   element should be visible    ${SIGN_IN}