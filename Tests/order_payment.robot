*** Settings ***

Resource            ../Keywords/order_payment.robot

Force Tags          OrderPayment

Suite Teardown                  Close browser

*** Test Cases ***

Verify ordering and payment method
   [Documentation]              OrderPayment
   open browser       ${URL}    browser=${BROWSER}
   Navigate to Search:          Blouse
   Order process:               mystore11@gmail.com    mystore1234
   Payment process
   should be equal              ${CONFIRMAITON}      Order confirmation