*** Settings ***

#Resource            ../Keywords/login_logout.robot
Resource            ../Keywords/order_payment.robot

Force Tags          OrderPayment

Suite Setup                     Open Browser
Suite Teardown                  Close browser

*** Test Cases ***

Verify ordering and payment method
   [Documentation]              order
   Navigate to Search:          Blouse
   Order process:               mystore11@gmail.com    mystore1234
   Payment process
   should be equal              ${CONFIRMAITON}      Order confirmation