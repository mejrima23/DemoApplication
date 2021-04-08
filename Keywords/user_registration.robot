*** Settings ***

Library     ExtendedSelenium2Library

*** Variables ***
${URL}                         http://automationpractice.com/index.php?controller=authentication&back=my-account
${BROWSER}                     chrome
${IN_EMAIL}                    id=email_create
${PASSWORD}                    mystore1234
${IN_PASSWORD}                 id=passwd
${IN_FIRSTNAME}                id=customer_firstname
${IN_LASTNAME}                 id=customer_lastname
${SIGN_IN_BTN}                 id=SubmitLogin
${SIGN_OUT_BTN}                css=.logout
${CREATE_BTN}                  id=SubmitCreate
${IN_ADDRESS}                  id=address1
${IN_CITY}                     id=city
${IN_STATE}                    id=id_state
${IN_CODE}                     id=postcode
${IN_PHONE}                    id=phone_mobile
${REGISTER_BTN}                id=submitAccount

*** Keywords ***

Open Browser to registration page
    [Documentation]             Opens browser to login page
    open browser       ${URL}   browser=${BROWSER}

Generate random Email:
    [Documentation]             Generates random Email
    [Arguments]                 ${EMAIL}
    input text                  ${IN_EMAIL}    ${EMAIL}
    click element               ${CREATE_BTN}

Input firstname and lastname:
    [Arguments]      ${FIRSTNAME}       ${LASTNAME}
    input text       ${IN_FIRSTNAME}    ${FIRSTNAME}
    input text       ${IN_LASTNAME}     ${LASTNAME}

Input password:
   [Arguments]       ${PASSWORD}
   input text        ${IN_PASSWORD}     ${PASSWORD}

Set address:
   [Arguments]       ${ADDRESS}    ${CITY}   ${STATE}   ${CODE}   ${PHONE}
   input text        ${IN_ADDRESS}      ${ADDRESS}
   input text        ${IN_CITY}         ${CITY}
   click element     ${IN_STATE}
   click element     //*[@id="id_state"]//option[text()="${STATE}"]
   input text        ${IN_CODE}         ${CODE}
   input text        ${IN_PHONE}        ${PHONE}
   click element     ${REGISTER_BTN}





