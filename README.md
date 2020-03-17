# README

## Steps to setup application
  ```
    1) Install ruby version 2.5.1
    2) Pull the repo
    3) run `bundle install`
    4) Migrate the database using `rake db:migrate`
    5) up the rails server using command `rails s`
    6) Now you should be able to use the api's successfully
  ```

## APi's List - This application has 3 api's created. Following REST endpoints exists in the app: 

  ### POST /phones
  ```
    Api Type: POST
    Api Url: /phones
    Parameters: {number: 'any number between 1111111111 and 9999999999' }
    Note: The parameters are optional.
    Description: Allots a number. Eg: {phone:1111111111}
    Response Json: { phone: 1234567890 }
  ```

  ### POST /phones/1111111111
  ```
    Api Type: POST
    Api Url: /phones/:number
    Parameters: No body parameters are required
    Note: Pass any number between 1111111111 and 9999999999 else any random phone number will be assigned.
    Description: Allots the number. Eg: {phone:1111111111}
    Response Json: { phone: 1234567890 }
  ```

  ### GET /phones
  ```
    Api Type: GET
    Api Url: /phones
    Parameters: No parameters are required
    Description: Lists all allotted numbers
    Response Json:  {phones: [1234567890, 1111111111]}
  ```