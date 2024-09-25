Feature: Usuarios

  Background:
    * url 'https://api.demoblaze.com'
    * def users = read('users.json')

  ### SIGN-IN
  Scenario: Crear nuevo Usuario
    * def create_user_request = users[0]

    Given path '/signup'
    And request create_user_request
    When method post
    Then status 200


  Scenario: Crear usuario existente
    * def create_user_already_exist_request = users[1]

    Given path '/signup'
    And request create_user_already_exist_request
    When method post
    Then status 200

    #* def expectedName = create_user_already_exist_request.username
    #* def expectedPassword = create_user_already_exist_request.password

    #And match response.username == expectedName
    #And match response.password == expectedPassword

  ######## LOG-IN
  Scenario: Login Usuario Correcto
    * def user_login_request = users[1]

    Given path '/login'
    And request user_login_request
    When method post
    Then status 200


  Scenario: Login Usuario Incorrecto Password
    * def user_login_wrong_pass_request = users[2]

    Given path '/login'
    And request user_login_wrong_pass_request
    When method post
    Then status 200

  Scenario: Login Usuario No Exist
    * def user_login_no_exist_request = users[3]

    Given path '/login'
    And request user_login_no_exist_request
    When method post
    Then status 200