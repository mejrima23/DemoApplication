There are two folders in this repository, Tests and Keywords. The Tests folder contains three SMOKE tests: one related to 
login and logout, second to the ordering and payment process, and the third related to the registration of a new user.
To run these tests, you need to set up a Robot Framework with Selenium.
To do this you need to:

Install IntelliJ IDEA community edition
https://www.jetbrains.com/idea/download/#section=windows

Python 2.7.1
https://www.python.org/download/releases/2.7/

Chrome Webdriver (latest version)
https://chromedriver.storage.googleapis.com/index.html?path=89.0.4389.23/

Plugins we need to install in IntelliJ:

-Python community edition

-Robot Framework Support

-Robot plugin

-IntelliBot @SeleniumLibrary Patched

The SDK project should be: Python 2.7
To run tests in the terminal, type: robot -d outputdir Tests / [test name]