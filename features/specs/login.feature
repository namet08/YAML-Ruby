Feature: Login

    Scenario: Login valid
        Given that the user accesses the login page
        When he fills in valid email and password
        Then he is logged into the platform

    Scenario: Login invalid
        Given that the user accesses the login page
        When he fills in invalid email and password
        Then ele não é logado na plataforma