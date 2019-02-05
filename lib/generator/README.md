#Generator
## Description
A generator that generates random data from different services. 

### Languages used
* Ruby

### Gems required
* JSON
* HTTParty
* RSpec

## Clone Repo
` git clone https://github.com/hibs28/Random-Generator-Template.git` 

## How to use
Before everything run `bundle` to install all the gems from the Gemfile for it to work.

Instansiate the super class `Generator` and from there run the method to call a service `@generator = Generator.new.form_data`. You can use any of the methods from that service 
```
@random_form_data = Generator.new.form_data
@random_form_data.first_name
@random_form_data.last_name
@random_form_date.date
```
##Tests
Make sure you are in the root directory of the project and then in terminal run `rspec`. The following tests should appear:

```
testing random form data
  should return a string for the first name
  should return a string for the last name
  should return a string for the date
```