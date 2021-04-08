*** Settings ***

Library                       String

Resource                      ../Keywords/user_registration.robot

Suite Setup                   Open Browser to registration page
Suite Teardown                Close browser

*** Variables ***
@{STATE_LIST}                  Alabama   California   Maine   Oregon
${LOGOUT_BTN}                  css=.logout

*** Test Cases ***

Verify user registration
   [Documentation]             New user registration
   [Tags]                      NewUser
   ${RANDOM}                   generate random string   8   [LOWER]
   Generate random Email:      ${RANDOM}@gmail.com
   ${RANDOM}                   generate random string   8   [LOWER]
   ${FIRSTNAME}                generate random string   8   [LETTERS]
   ${LASTNAME}                 generate random string   8   [LETTERS]
   Input firstname and lastname:           ${FIRSTNAME}   ${LASTNAME}
   Input password:             ${PASSWORD}
   ${STATE}                    evaluate   random.choice(@{STATE_LIST})
   ${CODE}                     generate random string    5  [NUMBERS]
   ${PHONE}                    generate random string    9  [NUMBERS]
   Set address:      Trg   Sarajevo    ${STATE}   ${CODE}   ${PHONE}
   element should be visible   ${LOGOUT_BTN}    Sign out
