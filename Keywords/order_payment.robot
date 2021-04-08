*** Settings ***

Library     ExtendedSelenium2Library



*** Variables ***
${URL}                    http://automationpractice.com/index.php
${BROWSER}                chrome
${IN_SEARCH}              id=search_query_top
${BTN_SEARCH}             css=.btn.btn-default.button-search
${SEARCH_RES}             xpath=//a[contains(@class, "product_img_link")]
${PROCEED}                css=.buttons_bottom_block button
${CHECKOUT}               css=.button-medium
${STANDARD}               css=.standard-checkout
${IN_EMAIL}               id=email
${IN_PASS}                id=passwd
${SIGN_IN_BTN}            id=SubmitLogin
${PROC}                   xpath=//span[text()="Proceed to checkout"]
${CHECKBOX}               id=cgv
${BANKWIRE}               css=.bankwire
${CONFIRM_ORDER}          xpath=//span[text()="I confirm my order"]
${CONFIRMAITON}           //span[text()="Order confirmation"]

*** Keywords ***

Open Browser
    [Documentation]             Opens browser to login page
    #[Arguments]                 ${BROWSER}
    open browser    ${URL}      browser=${BROWSER}
    maximize browser window

Navigate to Search:
    [Arguments]             ${SEARCH}
    input text              ${IN_SEARCH}    ${SEARCH}
    click element           ${BTN_SEARCH}
    wait until angular ready

Order process:
    [Arguments]             ${EMAIL}    ${PASSWORD}
    click element           ${SEARCH_RES}
    wait until angular ready
    click element           ${PROCEED}
    wait until angular ready
    click element           ${CHECKOUT}
    click element           ${CHECKOUT}
    click element           ${STANDARD}
    input text              ${IN_EMAIL}    ${EMAIL}
    input password          ${IN_PASS}     ${PASSWORD}
    click element           ${SIGN_IN_BTN}
    click element           ${PROC}
    select checkbox         ${CHECKBOX}
    click element           ${STANDARD}

Payment process
    click element           ${BANKWIRE}
    click element           ${CONFIRM_ORDER}



