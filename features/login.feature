Feature: Pagina de loggeo
   
    Como Usuario
    Quiero loggearme ingresando un usuario/email y contraseña.

    Scenario: Loggearme con un usuario exitosamente.
        Given Estoy en la pagina de loggeo
        When Ingreso el usuario "Test"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton iniciarSesion
        Then Hay un usuario loggeado con el nombre "Test"
        And Estoy en la pagina principal

    Scenario: Loggearme con un email exitosamente.
        Given Estoy en la pagina de loggeo
        When Ingreso el email "Test@gmail.com"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton iniciarSesion
        Then Hay un usuario loggeado con el nombre "Test"
        And Estoy en la pagina principal

    Scenario: Loggearme con un usuario fallido.
        Given Estoy en la pagina de loggeo
        When Ingreso el usuario "TestFalla"
        And Ingreso la contrasenia "1234"
        When Hago click en el boton iniciarSesion
        Then Veo un mensaje de "Usuario o contraseña invalido"
        
    Scenario: Loggearme sin completar el usuario.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton iniciarSesion
        Then Veo un mensaje de "Debe ingresar un usuario"

    Scenario: Loggearme sin completar la contraseña.
        Given Estoy en la pagina de loggeo
        When Ingreso el usuario "TestFalla"
        When Hago click en el boton iniciarSesion
        Then Veo un mensaje de "Debe ingresar una contraseña"