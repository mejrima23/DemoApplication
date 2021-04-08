*** Settings ***

Library     ExtendedSelenium2Library

*** Variables ***
${URL_LOGIN}                 http://automationpractice.com/index.php?controller=authentication&back=my-account
${BROWSER}                   chrome
${EMAIL}                     mystore11@gmail.com
${IN_EMAIL}                  id=email
${PASSWORD}                  mystore1234
${IN_PASSWORD}               id=passwd
${SIGN_IN_BTN}               id=SubmitLogin
${MY_ACCOUNT}                id=center_column
${SIGN_OUT_BTN}              css=.logout
${SIGN_IN}                   css=.login

*** Keywords ***

Open Browser to login page
    [Documentation]             Opens browser to login page
    open browser    ${URL_LOGIN}      browser=${BROWSER}
    maximize browser window

Input email:
    [Documentation]             Inputs email
    [Arguments]                 ${EMAIL}
    input text                  ${IN_EMAIL}   ${EMAIL}

Input password:
    [Documentation]             Input password
    [Arguments]                 ${PASSWORD}
    input password              ${IN_PASSWORD}   ${PASSWORD}

Login:
    [Documentation]             Input password and username
    [Arguments]                 ${EMAIL}    ${PASSWORD}
    Input email:                ${EMAIL}
    Input password:             ${PASSWORD}
    click element               ${SIGN_IN_BTN}
    wait until angular ready

Logout
    [Documentation]             Logout the user
    click element               ${SIGN_OUT_BTN}
    wait until angular ready
