-- --------------------------------------------
-- INSERTS FOR ACCOUNT TYPE
-- --------------------------------------------

INSERT INTO horizonte_gt.account_type (
    "account_type_name",
    "required_flights",
    "miles_per_dollar",
    "required_miles",
    "percentage_flight_cost"
) VALUES ('Normal',0,1,0,25);

INSERT INTO horizonte_gt.account_type (
    "account_type_name", 
    "required_flights",
    "miles_per_dollar",
    "required_miles",
    "percentage_flight_cost",
    "required_years_prev_acc",
    "prev_account_type_name"
) VALUES ('Oro',8,1.5,250,50,2,'Normal');

INSERT INTO horizonte_gt.account_type (
    "account_type_name",
    "required_flights",
    "miles_per_dollar",
    "required_miles",
    "percentage_flight_cost",
    "required_years_prev_acc",
    "prev_account_type_name"
) VALUES ('Platino',12,2,250,100,2,'Oro');

-- --------------------------------------------
-- INSERTS FOR USER
-- --------------------------------------------
INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'alejandroBR',
    'alejandro@mail.com',
    'Alejandro',
    'Barrios',
    '123456',
    '123password',
    '2000-05-02',
    'M',
    'Normal',
    0,
    ARRAY ['12345678','87456123']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'joseABR',
    'jose@mail.com',
    'Jose',
    'Rodas',
    '456789',
    '123password',
    '2000-08-02',
    'M',
    'Normal',
    0,
    ARRAY ['45678912','57446123']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'pabloBR',
    'pablo@mail.com',
    'Pablo',
    'Barrios',
    '4567891323',
    '123password',
    '2001-03-27',
    'M',
    'Oro',
    10,
    ARRAY ['45678912','57446123']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'sharonZG',
    'sharon@mail.com',
    'Sharon',
    'Zarate',
    '456789123789',
    '123password',
    '2000-10-06',
    'F',
    'Platino',
    100,
    ARRAY ['78965478']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'kiddieGang',
    'kiddie@mail.com',
    'Kiddie',
    'Gang',
    '65498731',
    '123password',
    '2001-08-11',
    'F',
    'Oro',
    100,
    ARRAY ['78965478','78978978','12345678']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles",
    "phones"
) VALUES (
    'ralphieChoo',
    'ralphie@mail.com',
    'Ralphie',
    'Choo',
    '78945613',
    '123password',
    '1999-10-06',
    'M',
    'Normal',
    0,
    ARRAY ['45645645']
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles"
) VALUES (
    'gabrielGM',
    'gabriel@mail.com',
    'Gabriel',
    'Garcia Marquez',
    '7894560341',
    '123password',
    '1990-05-06',
    'M',
    'Oro',
    100
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles"
) VALUES (
    'sabinoMX',
    'sabino@mail.com',
    'Sabino',
    'Santos',
    '784512963',
    '123password',
    '1991-05-06',
    'M',
    'Normal',
    0
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles"
) VALUES (
    'rebecaS',
    'rebeca@mail.com',
    'Rebeca',
    'Sanchez',
    '987456312',
    '123password',
    '1995-05-25',
    'F',
    'Oro',
    100
);

INSERT INTO horizonte_gt.user (
    "username",
    "email",
    "firstname",
    "lastname",
    "identification_number",
    "password",
    "birth_date",
    "gender",
    "account_type_name",
    "acumulated_miles"
) VALUES (
    'albaRA',
    'alba@mail.com',
    'Alba',
    'Rodas',
    '9874563124',
    '123password',
    '1966-05-25',
    'F',
    'Oro',
    100
);

-- --------------------------------------------
-- INSERTS FOR DOCUMENT TYPE
-- --------------------------------------------
INSERT INTO horizonte_gt.document_type("name_type")
VALUES ('Pasaporte');

INSERT INTO horizonte_gt.document_type("name_type")
VALUES ('Documento de Identidad');

INSERT INTO horizonte_gt.document_type("name_type")
VALUES ('Visa');

INSERT INTO horizonte_gt.document_type("name_type")
VALUES ('Licencia de Conducir');

-- --------------------------------------------
-- INSERTS FOR USER DOCUMENT
-- --------------------------------------------
INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2024-10-06',
    '1',
    'alejandroBR'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2030-10-06',
    '2',
    'alejandroBR'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2026-10-06',
    '3',
    'alejandroBR'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2022-10-06',
    '4',
    'alejandroBR'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2024-10-06',
    '1',
    'pabloBR'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2030-10-06',
    '2',
    'kiddieGang'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2026-10-06',
    '3',
    'sharonZG'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2028-10-06',
    '1',
    'sharonZG'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2024-10-06',
    '2',
    'sharonZG'
);

INSERT INTO horizonte_gt.user_document(
    "due_date",
    "id_document_type",
    "username"
) VALUES (
    '2022-10-06',
    '4',
    'sharonZG'
);

-- --------------------------------------------
-- INSERTS FOR NATIONALITY
-- --------------------------------------------

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Guatemalteco',
    'Guatemala'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Salvadoreño',
    'El Salvador'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Mexicano',
    'Mexico'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Español',
    'España'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Aleman',
    'Alemania'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Frances',
    'Francia'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Belga',
    'Belgica'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Argentino',
    'Argentina'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Canadiense',
    'Canada'
);

INSERT INTO horizonte_gt.nationality (
    "nationality_name",
    "country"
) VALUES (
    'Estadounidense',
    'Estados Unidos'
);

-- --------------------------------------------
-- INSERTS FOR USER NATIONALITY
-- --------------------------------------------
INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'alejandroBR',
    'Guatemalteco'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'joseABR',
    'Belga'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'pabloBR',
    'Salvadoreño'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'sharonZG',
    'Estadounidense'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'kiddieGang',
    'Canadiense'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'gabrielGM',
    'Argentino'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'sabinoMX',
    'Belga'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'rebecaS',
    'Frances'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'albaRA',
    'Aleman'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'ralphieChoo',
    'Español'
);

INSERT INTO horizonte_gt.user_nationality(
    "user_username",
    "nationality_name"
) VALUES (
    'ralphieChoo',
    'Mexicano'
);

-- --------------------------------------------
-- INSERTS FOR COURTESY
-- --------------------------------------------
INSERT INTO horizonte_gt.courtesy(
    "name_courtesy",
    "description"
) VALUES (
    '1 Pelicula',
    'Al abordar un avion tiene derecho a rentar una pelicula'
);

INSERT INTO horizonte_gt.courtesy(
    "name_courtesy",
    "description"
) VALUES (
    '1 Maleta Documentada de 50 lbs',
    'Al abordar un avion tiene derecho a cargar 1 maleta documentada de 50 lbs'
);

