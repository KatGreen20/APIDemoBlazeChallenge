Feature: Usuarios

  Background:
    * url 'https://api.demoblaze.com'

  ### SIGN-IN
  Scenario: Crear nuevo Usuario
    * def create_user_request =
    """
        {
          "username": "KathGreen2027",
          "password": "leader"
        }
    """
    Given path '/signup'
    And request create_user_request
    When method post
    Then status 200


  Scenario: Crear usuario existente
    * def create_user_already_exist_request =
    """
        {
          "username": "KathGreen20",
          "password": "leader"
        }
    """
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
    * def user_login_request =
    """
        {
          "username": "KathGreen20",
          "password": "leader"
        }
    """
    Given path '/login'
    And request user_login_request
    When method post
    Then status 200


  Scenario: Login Usuario Incorrecto Password
    * def user_login_wrong_pass_request =
    """
        {
          "username": "KathGreen20",
          "password": "ecSvMLObZTLu2V1"
        }
    """
    Given path '/login'
    And request user_login_wrong_pass_request
    When method post
    Then status 200

  Scenario: Login Usuario No Exist
    * def user_login_no_exist_request =
    """
        {
          "username": "Randy Kuhlman",
          "password": "BEgCJY7M_r9qUTk"
        }
    """
    Given path '/login'
    And request user_login_no_exist_request
    When method post
    Then status 200