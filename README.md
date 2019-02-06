# Web-Testing-Selenium
## Desciption
This project is an introduction to web testing, in where I created an automated test using selenium to select elements and inputs the fields to the ToolsQA: Automation Practice Form. Tests where cerated to provide validation if the automation proces has entered the correct data. 

## Clone the Repo
`git clone https://github.com/hibs28/Web-Testing-Selenium.git`

## Gems Required
* selenium-webdriver

## How to use
### Chrome Driver
This project uses the **chrome driver** for selenium. If you do not have this driver click on this link:

 <https://chromedriver.storage.googleapis.com/index.html?path=2.46/>

Download the zip for your operating system and move the driver to your local `bin` folder

On Mac : `mv Downloads/chromedriver /usr/local/bin/`

### Project 
Run `bundle` to install the gems required for this project

1. Instantiate the superclass `QATools` which will load the driver.
2. You will need to load the page as well so you will need to call the method `visit_practice_form`. `@driver.visit_practice_form`
3. You can then use any of the methods from that super class:

```
@driver.input_firstname_field_value
@driver.input_lastname_field_value
@driver.input_date_field_value
@driver.input_sex_checked()
@driver.input_year_experience_checked()

``` 


