Feature: Pagina de registro
   
    Como Usuario
    Quiero registrarme ingresando usuario, email, fecha de nacimiento, peso y contraseña.

    Scenario: Registrarme exitosamente.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el usuario "Test"
        And Ingreso el mail "test@gmail.com"
        And Ingreso la fecha de nacimiento "17/02/1992"
        And Ingreso el peso "76"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton registrarme
        Then Hay un usuario loggeado con el nombre "Test"
        And Estoy en la pagina principal

    Scenario: Registrarme fallido por falta del campo usuario.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el mail "test@gmail.com"
        And Ingreso la fecha de nacimiento "17/02/1992"
        And Ingreso el peso "76"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton registrarme
        Then Veo un mensaje "Todos los campos son obligatorios"

    Scenario: Registrarme fallido por falta del campo email.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el usuario "Test"
        And Ingreso la fecha de nacimiento "17/02/1992"
        And Ingreso el peso "76"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton registrarme
        Then Veo un mensaje "Todos los campos son obligatorios"

    Scenario: Registrarme fallido por falta del campo fecha.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el usuario "Test"
        And Ingreso el mail "test@gmail.com"
        And Ingreso el peso "76"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton registrarme
        Then Veo un mensaje "Todos los campos son obligatorios"

    Scenario: Registrarme fallido por falta del campo peso.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el usuario "Test"
        And Ingreso el mail "test@gmail.com"
        And Ingreso la fecha de nacimiento "17/02/1992"
        And Ingreso la contrasenia "test1234"
        When Hago click en el boton registrarme
        Then Veo un mensaje "Todos los campos son obligatorios"

    Scenario: Registrarme fallido por falta del campo contraseña.
        Given Estoy en la pagina de loggeo
        When Hago click en el boton registrarme
        Then Estoy en la pagina de registro
        When Ingreso el usuario "Test"
        And Ingreso el mail "test@gmail.com"
        And Ingreso la fecha de nacimiento "17/02/1992"
        And Ingreso el peso "76"
        When Hago click en el boton registrarme
        Then Veo un mensaje "Todos los campos son obligatorios"