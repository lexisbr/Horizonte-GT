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

-- --------------------------------------------
-- INSERTS FOR ACCOUNT TYPE COURTESY
-- --------------------------------------------

INSERT INTO horizonte_gt.account_type_courtesy(
    "account_type_name",
    "name_courtesy"
) VALUES (
    'Oro',
    '1 Pelicula'
);

INSERT INTO horizonte_gt.account_type_courtesy(
    "account_type_name",
    "name_courtesy"
) VALUES (
    'Platino',
    '1 Maleta Documentada de 50 lbs'
);

INSERT INTO horizonte_gt.account_type_courtesy(
    "account_type_name",
    "name_courtesy"
) VALUES (
    'Platino',
    '1 Pelicula'
);

-- --------------------------------------------
-- INSERTS FOR PURCHASER
-- --------------------------------------------

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones"
) VALUES (
    '123456789',
    'Eduardo',
    'Barrios',
    'eduardo@gmail.com',
    ARRAY ['123456','456789']
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones"
) VALUES (
    '1234567891',
    'Adely',
    'Guzman',
    'adely@gmail.com',
    ARRAY ['78945678','78956532']
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones"
) VALUES (
    '1234567892',
    'Jose',
    'Molina',
    'josem@gmail.com',
    ARRAY ['112345678','78456595']
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones"
) VALUES (
    '1234567893',
    'Janet',
    'Rodas',
    'janet@gmail.com',
    ARRAY ['45786595','32654157']
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones"
) VALUES (
    '1234567894',
    'Roberto',
    'Gutierrez',
    'robertog@gmail.com',
    ARRAY ['45487598']
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones",
    "user_username"
) VALUES (
    '123456',
    'Alejandro',
    'Barrios',
    'alejandro@gmail.com',
    ARRAY ['12345678','87456123'],
    'alejandroBR'
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones",
    "user_username"
) VALUES (
    '456789',
    'Jose',
    'Rodas',
    'jose@mail.com',
    ARRAY ['12345678','87456123'],
    'joseABR'
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones",
    "user_username"
) VALUES (
    '4567891323',
    'Pablo',
    'Barrios',
    'pablo@gmail.com',
    ARRAY ['45678912','57446123'],
    'pabloBR'
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones",
    "user_username"
) VALUES (
    '456789123789',
    'Sharon',
    'Zarate',
    'sharon@gmail.com',
    ARRAY ['12345678','87456123'],
    'sharonZG'
);

INSERT INTO horizonte_gt.purchaser(
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "phones",
    "user_username"
) VALUES (
    '65498731',
    'Kiddie',
    'Gang',
    'kiddie@gmail.com',
    ARRAY ['78965478','78978978','12345678'],
    'kiddieGang'
);

-- --------------------------------------------
-- INSERTS FOR PAYMENT METHOD
-- --------------------------------------------
INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '123456789',
    'Jose Barrios',
    'Visa',
    'Credito',
    true,
    '2022-12-12',
    'alejandroBR',
    '123456'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "purchaser_identification_number"
) VALUES (
    '1234567891',
    'Eduardo Barrios',
    'Visa',
    'Debito',
    true,
    '2025-10-08',
    '123456789'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "purchaser_identification_number"
) VALUES (
    '1234567892',
    'Adely Guzman',
    'MasterCard',
    'Debito',
    true,
    '2026-12-12',
    '1234567891'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "purchaser_identification_number"
) VALUES (
    '1234567893',
    'Jose Molina',
    'Visa',
    'Debito',
    true,
    '2027-12-12',
    '1234567892'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "purchaser_identification_number"
) VALUES (
    '1234567894',
    'Janet Rodas',
    'Visa',
    'Credito',
    true,
    '2024-12-12',
    '1234567893'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '1234567895',
    'Roberto Gutierrez',
    'AmEx',
    'Credito',
    true,
    '2025-09-12',
    'alejandroBR',
    '1234567894'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '1234567896',
    'Jose Rodas',
    'Visa',
    'Credito',
    true,
    '2022-12-12',
    'joseABR',
    '456789'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '1234567897',
    'Pablo Barrios',
    'MasterCard',
    'Credito',
    true,
    '2022-12-12',
    'pabloBR',
    '4567891323'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '1234567898',
    'Sharon Zarate',
    'Visa',
    'Credito',
    true,
    '2022-12-12',
    'sharonZG',
    '456789123789'
);

INSERT INTO horizonte_gt.payment_method (
    "card_number",
    "owner_name",
    "brand",
    "card_type",
    "is_default",
    "due_date",
    "user_username",
    "purchaser_identification_number"
) VALUES (
    '1234567899',
    'Kiddie Gang',
    'Visa',
    'Debito',
    true,
    '2027-12-12',
    'kiddieGang',
    '65498731'
);

-- --------------------------------------------
-- INSERTS FOR PASSENGER
-- --------------------------------------------

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date",
    "user_username"
) VALUES (
    '123456789',
    '123456789',
    'Alejandro',
    'Barrios',
    'alejandro@gmail.com',
    'M',
    '2000-05-02',
    'alejandroBR'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date",
    "user_username"
) VALUES (
    '1234567891',
    '1234567891',
    'Jose',
    'Rodas',
    'jose@gmail.com',
    'M',
    '2000-08-02',
    'joseABR'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date",
    "user_username"
) VALUES (
    '1234567892',
    '1234567892',
    'Pablo',
    'Barrios',
    'pablo@gmail.com',
    'M',
    '2001-03-27',
    'pabloBR'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date",
    "user_username"
) VALUES (
    '1234567893',
    '1234567893',
    'Sharon',
    'Zarate',
    'sharon@gmail.com',
    'F',
    '2000-10-06',
    'sharonZG'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date",
    "user_username"
) VALUES (
    '1234567894',
    '1234567894',
    'Kiddie',
    'Gang',
    'kiddie@gmail.com',
    'F',
    '2001-08-11',
    'kiddieGang'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date"
) VALUES (
    '1234567895',
    '1234567895',
    'Eduardo',
    'Barrios',
    'eduardo@gmail.com',
    'M',
    '1970-08-11'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date"
) VALUES (
    '1234567896',
    '1234567896',
    'Adely',
    'Guzman',
    'adely@gmail.com',
    'F',
    '1970-12-11'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date"
) VALUES (
    '1234567897',
    '1234567897',
    'Jose',
    'Molina',
    'josem@gmail.com',
    'M',
    '2000-10-15'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date"
) VALUES (
    '1234567898',
    '1234567898',
    'Janet',
    'Rodas',
    'janet@gmail.com',
    'F',
    '1966-10-15'
);

INSERT INTO horizonte_gt.passenger (
    "passport_number",
    "identification_number",
    "firstname",
    "lastname",
    "email",
    "gender",
    "birth_date"
) VALUES (
    '1234567899',
    '1234567899',
    'Roberto',
    'Gutierrez',
    'robertog@gmail.com',
    'M',
    '2000-08-15'
);

-- -----------------------------------------------------
-- INSERTS FOR COUNTRY
-- -----------------------------------------------------

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Francia',
    'FR'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Alemania',
    'DE'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Grecia',
    'GR'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Guatemala',
    'GT'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Holanda',
    'NL'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Nueva Zelanda',
    'NZ'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Portugal',
    'PT'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Jamaica',
    'JM'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'España',
    'ES'
);

INSERT INTO horizonte_gt.country (
    "name_country",
    "abbreviation"
) VALUES (
    'Estados Unidos',
    'US'
);
-- -----------------------------------------------------
-- INSERTS FOR CITY
-- -----------------------------------------------------

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Paris',
    'Francia'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Munich',
    'Alemania'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Atenas',
    'Grecia'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Ciudad de Guatemala',
    'Guatemala'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Amsterdam',
    'Holanda'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Wellington',
    'Nueva Zelanda'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Lisboa',
    'Portugal'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Kingston',
    'Jamaica'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Madrid',
    'España'
);

INSERT INTO horizonte_gt.city (
    "name_city",
    "name_country"
) VALUES (
    'Los Angeles',
    'Estados Unidos'
);

-- --------------------------------------------
-- INSERTS FOR AIRPORT
-- --------------------------------------------

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Frances',
    '1'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Aleman',
    '2'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Griego',
    '3'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Guatemalteco',
    '4'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Holandes',
    '5'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Neozelandes',
    '6'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Portugues',
    '7'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Jamaiquino',
    '8'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Español',
    '9'
);

INSERT INTO horizonte_gt.airport (
    "name_airport",
    "id_city"
) VALUES (
    'Aeropuerto Gringo',
    '10'
);

-- --------------------------------------------
-- INSERTS FOR GATE
-- --------------------------------------------

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '1',
    'A-1',
    '1'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '2',
    'B-1',
    '2'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '3',
    'C-1',
    '3'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '4',
    'D-1',
    '4'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '5',
    'E-1',
    '5'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '6',
    'F-1',
    '6'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '7',
    'G-1',
    '7'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '8',
    'H-1',
    '8'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '9',
    'I-1',
    '9'
);

INSERT INTO horizonte_gt.gate (
    "id_gate",
    "name_gate",
    "airport_id_airport"
) VALUES (
    '10',
    'J-1',
    '10'
);

-- --------------------------------------------
-- INSERTS FOR AIRPLANE TYPE
-- --------------------------------------------

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 1');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 2');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 3');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 4');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 5');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 6');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 7');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 8');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 9');

INSERT INTO horizonte_gt.airplane_type ("name") 
VALUES ('Tipo 10');

-- --------------------------------------------
-- INSERTS FOR FLIGHT PLAN
-- --------------------------------------------


INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    200,
    false,
    '06:00',
    '12:00',
    '05:30',
    ARRAY ['LUNES','MARTES','MIERCOLES'],
    1,
    2,
    1
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    400,
    false,
    '06:00',
    '17:00',
    '05:30',
    ARRAY ['LUNES','MIERCOLES'],
    2,
    3,
    2
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    100,
    false,
    '16:00',
    '17:00',
    '15:30',
    ARRAY ['MARTES','JUEVES'],
    3,
    4,
    3
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    300,
    false,
    '16:00',
    '13:00',
    '12:30',
    ARRAY ['MIERCOLES','JUEVES'],
    4,
    5,
    4
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    400,
    false,
    '16:00',
    '20:00',
    '15:30',
    ARRAY ['MARTES','VIERNES'],
    5,
    6,
    5
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    800,
    false,
    '20:00',
    '05:00',
    '19:30',
    ARRAY ['VIERNES','SABADO'],
    6,
    7,
    6
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    450,
    true,
    '12:00',
    '17:00',
    '11:30',
    ARRAY ['SABADO','DOMINGO'],
    7,
    8,
    7
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    150,
    true,
    '15:00',
    '16:00',
    '14:30',
    ARRAY ['LUNES','JUEVES'],
    8,
    9,
    8
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    100,
    true,
    '18:00',
    '19:00',
    '17:30',
    ARRAY ['VIERNES','SABADO'],
    9,
    10,
    9
);

INSERT INTO horizonte_gt.flight_plan(
    "distance_miles",
    "is_temporal",
    "takeoff_time",
    "arrival_time",
    "boarding_time",
    "available_days",
    "id_gate_takeoff",
    "id_gate_arrival",
    "id_plane_type"
) VALUES (
    100,
    false,
    '18:00',
    '19:00',
    '17:30',
    ARRAY ['LUNES','MARTES'],
    10,
    1,
    10
);

-- --------------------------------------------
-- INSERTS FOR FLIGHT PLAN TEMPORARY
-- --------------------------------------------

INSERT INTO horizonte_gt.flight_plan_temporary(
    "start_date",
    "end_date",
    "status",
    "id_flight_plan"
) VALUES (
    '20-12-2022',
    '01-01-2023',
    true,
    9
);

INSERT INTO horizonte_gt.flight_plan_temporary(
    "start_date",
    "end_date",
    "status",
    "id_flight_plan"
) VALUES (
    '01-12-2022',
    '20-12-2023',
    false,
    10
);

INSERT INTO horizonte_gt.flight_plan_temporary(
    "start_date",
    "end_date",
    "status",
    "id_flight_plan"
) VALUES (
    '05-05-2022',
    '15-01-2023',
    true,
    11
);

-- --------------------------------------------
-- INSERTS FOR AIRPLANE
-- --------------------------------------------

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '15-05-2000',
    '30-05-2000',
    '20-09-2022',
    300,
    15,
    1
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'MANTENIMIENTO',
    '30-10-2010',
    '05-11-2010',
    '30-09-2022',
    400,
    20,
    2
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '01-05-2020',
    '05-05-2020',
    '30-01-2022',
    250,
    15,
    3
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'MANTENIMIENTO',
    '01-08-2015',
    '15-08-2015',
    '15-02-2022',
    300,
    10,
    4
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '08-02-2012',
    '15-02-2012',
    '05-08-2021',
    400,
    20,
    5
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '15-09-2018',
    '25-09-2018',
    '08-12-2021',
    600,
    25,
    6
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '07-04-2018',
    '20-04-2018',
    '30-11-2020',
    400,
    20,
    7
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'MANTENIMIENTO',
    '01-09-2008',
    '11-09-2008',
    '18-04-2022',
    900,
    30,
    9
);

INSERT INTO horizonte_gt.airplane (
    "status",
    "purchase_date",
    "first_flight_date",
    "last_maintenance_date",
    "available_seats",
    "available_seats_employees",
    "id_airplane_type"
) VALUES (
    'ACTIVO',
    '07-08-2010',
    '08-10-2010',
    '30-10-2021',
    150,
    10,
    10
);

-- -----------------------------------------------------
-- INSERTS FOR CLASS
-- -----------------------------------------------------

INSERT INTO horizonte_gt.class (
    "name_class",
    "abbreviation",
    "hand_bags_number",
    "checked_bags_number",
    "location",
    "exchange_fees",
    "accept_refunds",
    "allows_insurance",
    "seat_is_assigned"
) VALUES (
    'PRIMERA CLASE',
    'PC',
    1,
    2,
    'PRIMERAS FILAS',
    0,
    true,
    true,
    false
);

INSERT INTO horizonte_gt.class (
    "name_class",
    "abbreviation",
    "hand_bags_number",
    "checked_bags_number",
    "location",
    "exchange_fees",
    "accept_refunds",
    "allows_insurance",
    "seat_is_assigned"
) VALUES (
    'CLASE BUSINESS',
    'CB',
    1,
    1,
    'FILAS DESPUES DE PC',
    0,
    true,
    true,
    false
);

INSERT INTO horizonte_gt.class (
    "name_class",
    "abbreviation",
    "hand_bags_number",
    "checked_bags_number",
    "location",
    "exchange_fees",
    "accept_refunds",
    "allows_insurance",
    "seat_is_assigned"
) VALUES (
    'CLASE ECONOMY',
    'CE',
    1,
    0,
    'ULTIMAS FILAS',
    0,
    false,
    true,
    false
);

INSERT INTO horizonte_gt.class (
    "name_class",
    "abbreviation",
    "hand_bags_number",
    "checked_bags_number",
    "location",
    "exchange_fees",
    "accept_refunds",
    "allows_insurance",
    "seat_is_assigned"
) VALUES (
    'CLASE ECONOMY BASICA',
    'EB',
    0,
    0,
    'ULTIMAS FILAS',
    0,
    false,
    false,
    true
);

-- -----------------------------------------------------
-- INSERTS FOR FLIGHT PLAN CLASS
-- -----------------------------------------------------

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    3,
    'PRIMERA CLASE',
    250.00,
    200,
    10,
    15,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    4,
    'PRIMERA CLASE',
    350.00,
    300,
    15,
    15,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    5,
    'CLASE BUSINESS',
    150.00,
    100,
    05,
    10,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    5,
    'CLASE ECONOMY',
    100.00,
    800,
    10,
    15,
    5
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    6,
    'CLASE ECONOMY',
    200,
    150,
    10,
    15,
    5
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    6,
    'PRIMERA CLASE',
    400.00,
    300,
    5,
    10,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    7,
    'CLASE ECONOMY',
    100.00,
    70,
    10,
    15,
    5
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    8,
    'PRIMERA CLASE',
    400.00,
    300,
    10,
    10,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    8,
    'CLASE BUSINESS',
    250.00,
    200,
    10,
    15,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    9,
    'CLASE ECONOMY',
    200.00,
    150,
    09,
    09,
    5
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    10,
    'PRIMERA CLASE',
    550.00,
    400,
    10,
    15,
    3
);

INSERT INTO horizonte_gt.flight_plan_class (
    "id_flight_plan",
    "name_class",
    "adults_price",
    "child_price",
    "pct_increase_child",
    "pct_increase_adults",
    "price_increase_limit"
) VALUES (
    11,
    'PRIMERA CLASE',
    700.00,
    600,
    10,
    15,
    3
);

-- --------------------------------------------
-- INSERTS FOR SEAT
-- --------------------------------------------

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    2,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    2,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    3,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    3,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    4,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    4,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    6,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    6,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    7,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    7,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '1',
    'A',
    8,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '2',
    'A',
    8,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '3',
    'A',
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '4',
    'A',
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '3',
    'A',
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '4',
    'A',
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '5',
    'A',
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.seat (
    "number_row",
    "letter_row",
    "id_airplane",
    "name_class"
) VALUES (
    '6',
    'A',
    1,
    'PRIMERA CLASE'
);

-- --------------------------------------------
-- INSERTS FOR DISTRIBUTION CLASS AIRPLANE
-- --------------------------------------------

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '1',
    'PRIMERA CLASE',
    '3',
    '10'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '1',
    'CLASE BUSINESS',
    '3',
    '5'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '2',
    'PRIMERA CLASE',
    '3',
    '10'
);


INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '2',
    'CLASE BUSINESS',
    '3',
    '5'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '3',
    'PRIMERA CLASE',
    '3',
    '10'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '3',
    'CLASE BUSINESS',
    '3',
    '5'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '4',
    'PRIMERA CLASE',
    '3',
    '10'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '4',
    'CLASE BUSINESS',
    '3',
    '5'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '5',
    'PRIMERA CLASE',
    '3',
    '10'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '5',
    'CLASE BUSINESS',
    '3',
    '5'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '6',
    'PRIMERA CLASE',
    '3',
    '10'
);

INSERT INTO horizonte_gt.distribution_class_airplane(
    "id_airplane",
    "name_class",
    "assigned_rows",
    "seats_per_row"
) VALUES (
    '6',
    'CLASE BUSINESS',
    '3',
);

-- --------------------------------------------
-- INSERTS FOR DISTRIBUTION FLIGHT STATUS
-- --------------------------------------------
INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'ABORDANDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'DESPEGANDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'ASCENDIENDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'VOLANDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'DESCENDIENDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'ATERRIZANDO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'ATERRIZADO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'INACTIVO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'INACTIVO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight_status (
    "name_flight_status"
) VALUES (
    'FINALIZADO'
);

-- --------------------------------------------
-- INSERTS FOR FLIGHT 
-- --------------------------------------------
INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '06:00:00',
    3,
    1,
    1,
    2,
    'VOLANDO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-16',
    '17:00:00',
    '06:00:00',
    4,
    3,
    3,
    4,
    'FINALIZADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-15',
    '17:00:00',
    '16:00:00',
    5,
    5,
    3,
    5,
    'FINALIZADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '13:00:00',
    6,
    6,
    2,
    3,
    'ABORDANDO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '16:00:00',
    7,
    9,
    5,
    6,
    'ABORDANDO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '22:00:00',
    8,
    1,
    2,
    3,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    null,
    9,
    8,
    8,
    9,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-18',
    null,
    null,
    10,
    8,
    8,
    9,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '17:00:00',
    10,
    3,
    5,
    6,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight(
    "flight_date",
    "arrival_time",
    "takeoff_time",
    "id_flight_plan",
    "id_airplane",
    "id_gate_arrival",
    "id_gate_takeoff",
    "name_flight_status"
) VALUES (
    '2022-05-17',
    null,
    '19:00:00',
    11,
    8,
    7,
    10,
    'RETRASADO'
);

-- --------------------------------------------
-- INSERTS FOR FLIGHT STATUS LOGGER
-- --------------------------------------------

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '06:00',
    '17-05-2022',
    25,
    'DESPEGANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '06:10',
    '17-05-2022',
    25,
    'VOLANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '07:00',
    '17-05-2022',
    26,
    'DESPEGANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '07:10',
    '17-05-2022',
    26,
    'VOLANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '16:30',
    '18-05-2022',
    26,
    'DESCENDIENDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '16:50',
    '18-05-2022',
    26,
    'ATERRIZANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '17:00',
    '18-05-2022',
    26,
    'FINALIZADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '07:00',
    '17-05-2022',
    27,
    'DESPEGANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '07:10',
    '17-05-2022',
    27,
    'VOLANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '16:30',
    '18-05-2022',
    27,
    'DESCENDIENDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '16:50',
    '18-05-2022',
    27,
    'ATERRIZANDO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '17:00',
    '18-05-2022',
    27,
    'FINALIZADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    30,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    31,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    25,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    26,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    27,
    'RETRASADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    28,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    29,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    29,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    30,
    'CANCELADO'
);

INSERT INTO horizonte_gt.flight_status_logger(
    "time",
    "date",
    "id_flight",
    "name_flight_status"
) VALUES (
    '24:00',
    '17-05-2022',
    30,
    'RETRASADO'
);
-- --------------------------------------------
-- INSERTS FOR PURCHASE 
-- --------------------------------------------

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    700.00,
    '17-05-2022',
    1,
    'ACTIVO',
    '123456',
    '123456789'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    900.00,
    '16-05-2022',
    2,
    'ACTIVO',
    '123456789',
    '1234567891'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    1000.00,
    '17-05-2022',
    2,
    'ACTIVO',
    '1234567891',
    '1234567892'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    1500.00,
    '10-05-2022',
    3,
    'ACTIVO',
    '1234567892',
    '1234567893'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    700.00,
    '15-05-2022',
    1,
    'ACTIVO',
    '1234567894',
    '1234567895'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    1800.00,
    '10-04-2022',
    2,
    'ACTIVO',
    '456789',
    '1234567896'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    700.00,
    '17-05-2022',
    1,
    'ACTIVO',
    '4567891323',
    '1234567897'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    700.00,
    '17-05-2022',
    1,
    'ACTIVO',
    '456789123789',
    '1234567898'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    500.00,
    '14-05-2022',
    1,
    'ACTIVO',
    '456789123789',
    '1234567899'
);

INSERT INTO horizonte_gt.purchase(
    "total",
    "purchase_date",
    "total_tickets",
    "status",
    "identification_number",
    "card_number"
) VALUES (
    500.00,
    '14-05-2022',
    1,
    'ACTIVO',
    '65498731',
    '1234567899'
);

-- --------------------------------------------
-- INSERTS FOR REDEEMED MILES 
-- --------------------------------------------
INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    100,
    50,
    50,
    'alejandroBR',
    14
);

INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    200,
    150,
    50,
    'joseABR',
    19
);


INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    500,
    350,
    150,
    'pabloBR',
    20
);

INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    500,
    350,
    150,
    'sharonZG',
    21
);

INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    350,
    200,
    150,
    'sharonZG',
    22
);

INSERT INTO horizonte_gt.redeemed_miles(
    "old_total_miles",
    "new_total_miles",
    "redeemed_miles",
    "user_username",
    "id_purchase"
) VALUES (
    400,
    200,
    200,
    'kiddieGang',
    23
);

-- --------------------------------------------
-- INSERTS FOR ASSIGNMENT SEAT TICKET
-- --------------------------------------------

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '1',
    30,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '1',
    25,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '2',
    30,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '2',
    25,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    3,
    'A',
    '1',
    33,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    3,
    'A',
    '1',
    26,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    3,
    'A',
    '2',
    33,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    3,
    'A',
    '2',
    26,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    5,
    'A',
    '1',
    27,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    5,
    'A',
    '2',
    27,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    5,
    'A',
    '3',
    27,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    5,
    'A',
    '4',
    27,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '3',
    25,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '4',
    25,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '5',
    25,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '3',
    26,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '3',
    33,
    'ACTIVO'
);

INSERT INTO horizonte_gt.assignment_seat_ticket(
    "id_airplane",
    "letter_row",
    "seat_number_row",
    "id_flight",
    "status"
) VALUES (
    1,
    'A',
    '4',
    33,
    'ACTIVO'
);


-- --------------------------------------------
-- INSERTS FOR INSURANCE PERCENTAGE PRICE
-- --------------------------------------------

INSERT INTO horizonte_gt.insurance_percentage_price(
    "percentage_of_price"
) VALUES (
    50
);

-- --------------------------------------------
-- INSERTS FOR DOUBLE TRIP DISCOUNT
-- --------------------------------------------
INSERT INTO horizonte_gt.double_trip_discount(
    "discount",
    "name_class"
) VALUES (
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.double_trip_discount(
    "discount",
    "name_class"
) VALUES (
    3,
    'CLASE BUSINESS'
);

INSERT INTO horizonte_gt.double_trip_discount(
    "discount",
    "name_class"
) VALUES (
    2.5,
    'CLASE ECONOMY'
);

INSERT INTO horizonte_gt.double_trip_discount(
    "discount",
    "name_class"
) VALUES (
    2.5,
    'CLASE ECONOMY BASICA'
);

-- --------------------------------------------
-- INSERTS FOR TICKET
-- --------------------------------------------

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    700,
    14,
    '123456789',
    1,
    'A',
    '1',
    30,
    null,
    false,
    null,
    null,
    'ACTIVO'
);


INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    450,
    15,
    '1234567891',
    1,
    'A',
    '1',
    25,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    450,
    15,
    '1234567892',
    1,
    'A',
    '2',
    25,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    500,
    16,
    '1234567893',
    1,
    'A',
    '2',
    30,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    500,
    16,
    '1234567893',
    3,
    'A',
    '1',
    33,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    500,
    17,
    '1234567894',
    3,
    'A',
    '1',
    26,
    null,
    true,
    1,
    1,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    500,
    17,
    '1234567894',
    3,
    'A',
    '2',
    33,
    7,
    true,
    1,
    1,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    700,
    18,
    '1234567895',
    3,
    'A',
    '2',
    26,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    700,
    20,
    '1234567896',
    5,
    'A',
    '1',
    27,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

INSERT INTO horizonte_gt.ticket(
    "price",
    "id_purchase",
    "passenger_passport_number",
    "id_airplane",
    "seat_letter_row",
    "seat_number_row",
    "id_flight",
    "id_return_ticket",
    "has_insurance",
    "id_insurance_percentage_price",
    "id_double_trip_discount",
    "status"
) VALUES (
    700,
    21,
    '1234567897',
    5,
    'A',
    '2',
    27,
    null,
    false,
    null,
    null,
    'ACTIVO'
);

-- --------------------------------------------
-- INSERTS FOR PASSENGER NATIONALITY
-- --------------------------------------------
INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Guatemalteco',
    '123456789'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Salvadoreño',
    '1234567891'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Mexicano',
    '1234567892'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Español',
    '1234567893'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Aleman',
    '1234567894'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Frances',
    '1234567895'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Belga',
    '1234567896'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Argentino',
    '1234567897'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Canadiense',
    '1234567898'
);

INSERT INTO horizonte_gt.passenger_nationality (
    "nationality_name",
    "passenger_passport_number"
) VALUES (
    'Estadounidense',
    '1234567899'
);

-- --------------------------------------------
-- INSERTS FOR PET
-- --------------------------------------------
INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Lola',
    '/path/doc',
    35
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Firulais',
    '/path/doc',
    15
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Barry',
    '/path/doc',
    5
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Gato',
    'Bigotes',
    '/path/doc',
    15
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Bruno',
    '/path/doc',
    10
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Lulu',
    '/path/doc',
    10
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Perro',
    'Doggo',
    '/path/doc',
    35
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Gato',
    'Coco',
    '/path/doc',
    25
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Gato',
    'Martin',
    '/path/doc',
    15
);

INSERT INTO horizonte_gt.pet(
    "specie",
    "name",
    "veterinary_certificate_path",
    "weight"
) VALUES (
    'Gato',
    'Gorda',
    '/path/doc',
    35
);

-- --------------------------------------------
-- INSERTS FOR VACCINE LIST
-- --------------------------------------------
INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    1
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    2
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    3
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    4
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    5
);
INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    6
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    7
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    8
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    9
);

INSERT INTO horizonte_gt.vaccine_list(
    "vaccine_name",
    "id_pet"
) VALUES (
    'PARVOVIRUS',
    10
);

-- --------------------------------------------
-- INSERTS FOR PET FLIGHT PRICE
-- --------------------------------------------
INSERT INTO horizonte_gt.pet_flight_price(
    "max_weight",
    "airplane_zone",
    "price"
) VALUES (
    '30',
    'CABINA',
    100
);

INSERT INTO horizonte_gt.pet_flight_price(
    "max_weight",
    "airplane_zone",
    "price"
) VALUES (
    '200',
    'ZONA DE CARGA',
    200
);

-- --------------------------------------------
-- INSERTS FOR PET TICKET
-- --------------------------------------------
INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    1,
    1,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    2,
    1,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    3,
    2,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    4,
    2,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    5,
    3,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    6,
    3,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    7,
    4,
    2
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    8,
    5,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    9,
    5,
    1
);

INSERT INTO horizonte_gt.pet_ticket (
    "id_pet",
    "id_ticket",
    "id_pet_flight_price"
) VALUES (
    10,
    6,
    2
);

-- --------------------------------------------
-- INSERTS FOR BOARDING
-- --------------------------------------------
INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '19:30',
    '20:00',
    2
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '05:30',
    '06:00',
    3
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '05:30',
    '06:00',
    4
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '19:30',
    '20:00',
    5
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '14:30',
    '15:00',
    6
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '05:30',
    '06:00',
    7
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '14:30',
    '15:00',
    8
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '05:30',
    '06:00',
    9
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '15:30',
    '16:00',
    10
);

INSERT INTO horizonte_gt.boarding(
    "boarding_time",
    "departure_time",
    "id_ticket"
) VALUES (
    '15:30',
    '16:00',
    11
);

-- --------------------------------------------
-- INSERTS FOR LUGGAGE_TYPE
-- --------------------------------------------
INSERT INTO horizonte_gt.luggage_type (
    "max_value",
    "assigned_zone",
    "name_type_luggage"
) VALUES (
    50,
    'ZONA DE CARGA',
    'MALETA DOCUMENTADA'
);

INSERT INTO horizonte_gt.luggage_type (
    "max_value",
    "assigned_zone",
    "name_type_luggage"
) VALUES (
    20,
    'CABINA',
    'MALETA DE MANO'
);

-- --------------------------------------------
-- INSERTS FOR LUGAGGE PRICE
-- --------------------------------------------

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    1,
    25,
    2
);

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    2,
    50,
    2
);

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    3,
    75,
    2
);

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    1,
    50,
    1
);

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    2,
    75,
    1
);

INSERT INTO horizonte_gt.luggage_price(
    "luggage_number",
    "price",
    "id_luggage_type"
) VALUES (
    3,
    100,
    1
);

-- --------------------------------------------
-- INSERTS FOR LUGAGGE 
-- --------------------------------------------
INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    1,
    1,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    2,
    1,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    3,
    1,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    1,
    2,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    2,
    2,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    3,
    2,
    2,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    1,
    1,
    3,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    2,
    1,
    3,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    3,
    1,
    3,
    'ABORDO',
    false
);

INSERT INTO horizonte_gt.luggage(
    "weight",
    "height",
    "width",
    "volume",
    "luggage_number",
    "id_luggage_type",
    "id_ticket",
    "status",
    "isDelivered"
) VALUES (
    10,
    10,
    10,
    10,
    1,
    1,
    4,
    'ABORDO',
    false
);

-- --------------------------------------------
-- INSERTS FOR POSITION
-- --------------------------------------------
INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'PILOTO',
    true,
    100
);

INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'COPILOTO',
    true,
    80
);

INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'AZAFATA',
    true,
    50
);

INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'SECRETARIA',
    false,
    30
);

INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'MECANICO',
    false,
    100
);

INSERT INTO horizonte_gt.position(
    "name",
    "is_aboard",
    "hourly_base_salary"
) VALUES (
    'Ingeniero de Vuelo',
    true,
    100
);

-- --------------------------------------------
-- INSERTS FOR EMPLOYEE
-- --------------------------------------------
INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '123456789',
    'Zack',
    'Efron',
    'zack@gmail.com',
    'PILOTO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    1,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567891',
    'Van',
    'Gogh',
    'van@gmail.com',
    'PILOTO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    1,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567892',
    'Yes',
    'Honey',
    'yes@gmail.com',
    'PILOTO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    1,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567893',
    'Daddy',
    'Yankee',
    'daddy@gmail.com',
    'PILOTO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    1,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567894',
    'Alejandro',
    'Guzman',
    'alejandro@gmail.com',
    'COPILOTO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    2,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567896',
    'Fernando',
    'Rios',
    'fernando@gmail.com',
    'MECANICO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    5,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567897',
    'Eduardo',
    'Rios',
    'eduardo@gmail.com',
    'MECANICO',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    5,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567898',
    'Dora',
    'Arriola',
    'dora@gmail.com',
    'AZAFATA',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    3,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567899',
    'Edna',
    'Rodas',
    'edna@gmail.com',
    'AZAFATA',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    3,
    100
);

INSERT INTO horizonte_gt.employee(
    "id_employee",
    "firstname",
    "lastname",
    "email",
    "employee_type",
    "phone",
    "birth_date",
    "hiring_date",
    "id_position",
    "hour_base_salary"
) VALUES (
    '1234567895',
    'Yolandi',
    'Si',
    'edna@gmail.com',
    'AZAFATA',
    '12345678',
    '2000-02-05',
    '2022-02-05',
    3,
    100
);


-- --------------------------------------------
-- INSERTS FOR POSITION ABOARD
-- --------------------------------------------
INSERT INTO horizonte_gt.position_aboard(
    "extra_commissions",
    "id_position"
) VALUES (
    100,
    1
);

INSERT INTO horizonte_gt.position_aboard(
    "extra_commissions",
    "id_position"
) VALUES (
    90,
    2
);

INSERT INTO horizonte_gt.position_aboard(
    "extra_commissions",
    "id_position"
) VALUES (
    50,
    3
);

INSERT INTO horizonte_gt.position_aboard(
    "extra_commissions",
    "id_position"
) VALUES (
    100,
    6
);

-- --------------------------------------------
-- INSERTS FOR EMPLOYEE PILOT
-- --------------------------------------------
INSERT INTO horizonte_gt.employee_pilot(
    "employee_id_employee",
    "start_date"
) VALUES (
    '123456789',
    '2020-01-01'
);

INSERT INTO horizonte_gt.employee_pilot(
    "employee_id_employee",
    "start_date"
) VALUES (
    '1234567891',
    '2019-01-01'
);

INSERT INTO horizonte_gt.employee_pilot(
    "employee_id_employee",
    "start_date"
) VALUES (
    '1234567892',
    '2018-01-01'
);

INSERT INTO horizonte_gt.employee_pilot(
    "employee_id_employee",
    "start_date"
) VALUES (
    '1234567893',
    '2017-01-01'
);

-- --------------------------------------------
-- INSERTS FOR FLIGHT ATTENDANCE
-- --------------------------------------------

INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('5:29', '23:00', '2021-10-07', 123456789);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('9:28', '23:18', '2021-08-21', 123456789);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('13:27', '23:37', '2021-09-07', 1234567891);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('18:56', '19:45', '2022-04-10', 1234567891);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('23:10', '8:29', '2021-05-18', 1234567892);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('2:31', '8:44', '2021-11-30', 1234567892);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('14:48', '8:12', '2022-02-20', 1234567893);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('1:12', '3:36', '2021-07-14', 1234567893);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('6:15', '18:24', '2022-03-06', 1234567894);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('20:20', '16:28', '2021-05-23', 1234567894);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('13:16', '19:57', '2021-08-07', 1234567896);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('1:13', '3:39', '2022-04-18', 1234567896);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('1:55', '1:47', '2021-06-02', 1234567897);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('16:03', '22:59', '2021-08-12', 1234567897);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('19:02', '7:49', '2021-12-05', 1234567898);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('1:13', '15:43', '2021-06-20', 1234567898);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('2:23', '19:46', '2021-11-11', 1234567899);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('16:31', '21:01', '2021-12-01', 1234567899);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('0:57', '16:39', '2021-09-26', 1234567895);
INSERT INTO horizonte_gt.attendance ("arrival_time", "departure_time", "date", "id_employee") VALUES ('15:35', '10:10', '2022-01-24', 1234567895);

-- --------------------------------------------
-- INSERTS FOR FLIGHT NON attendance
-- --------------------------------------------

INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2022-04-23', '2021-10-20', 'odio in hac habitasse', 'bibendum felis sed', 123456789	);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2021-12-15', '2021-08-01', 'eros suspendisse accumsan tortor quis', 'blandit ultrices enim lorem', 1234567891);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2021-07-22', '2021-12-28', 'tristique in tempus sit', 'morbi ut odio cras', 1234567892);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2022-01-08', '2021-11-16', 'ut massa volutpat convallis', 'quam fringilla rhoncus', 1234567893);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2021-06-29', '2021-11-30', 'orci luctus et ultrices posuere', 'vel pede morbi porttitor lorem', 1234567894);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2022-01-06', '2022-01-16', 'risus praesent lectus vestibulum quam', 'ac nibh fusce lacus', 1234567896);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2022-01-13', '2021-08-29', 'fermentum donec ut mauris eget', 'eros elementum pellentesque quisque porta', 1234567897);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2021-07-06', '2021-08-17', 'amet lobortis sapien', 'nulla suscipit ligula in lacus', 1234567898);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2022-04-07', '2021-11-26', 'tincidunt eu felis', 'volutpat sapien arcu sed augue', 1234567899);
INSERT INTO horizonte_gt.non_attendance (start_date, end_date, reason, justification, id_employee) VALUES ('2021-07-17', '2021-11-04', 'accumsan tellus nisi', 'quisque ut erat', 1234567895);

-- --------------------------------------------
-- INSERTS FOR VACATION REQUEST
-- --------------------------------------------

INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-02-15', '2022-03-08', 'APROBADA', 123456789);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-03-21', '2021-07-19', 'DENEGADA', 1234567891);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-02-22', '2021-06-26', 'PENDIENTE', 1234567892);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-01-21', '2021-08-02', 'PENDIENTE', 1234567893);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2021-09-21', '2021-12-30', 'PENDIENTE', 1234567894);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-03-03', '2021-07-08', 'APROBADA', 1234567896);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2021-08-18', '2022-05-21', 'APROBADA', 1234567897);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-02-02', '2021-06-19', 'APROBADA', 1234567898);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2021-05-17', '2022-04-19', 'APROBADA', 1234567899);
INSERT INTO horizonte_gt.vacation_request (start_date, end_date, status, id_employee) VALUES ('2022-04-06', '2021-11-02', 'APROBADA', 1234567895);

-- --------------------------------------------
-- INSERTS FOR FLIGHT EMPLOYEE
-- --------------------------------------------
INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '123456789',
    25,
    100
);


INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567891',
    26,
    100
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567892',
    27,
    10
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567893',
    28,
    10
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '123456789',
    29,
    50
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '123456789',
    30,
    40
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567891',
    31,
    75
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567892',
    32,
    75
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567893',
    33,
    150
);

INSERT INTO horizonte_gt.flight_employee(
    "id_employee",
    "id_flight",
    "extra_comissions_amount"
) VALUES (
    '1234567893',
    34,
    150
);

-- --------------------------------------------
-- INSERTS FOR FOOD
-- --------------------------------------------
INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'PEPIAN',
    150.00,
    'ALMUERZO',
    30.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'QUICHON',
    150.00,
    'ALMUERZO',
    30.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'KAKIK',
    200.00,
    'ALMUERZO',
    50.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'PLATANOS EN MOLE',
    80.00,
    'ALMUERZO',
    20.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'CEREAL',
    30.00,
    'DESAYUNO',
    10.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'YOGURTH',
    8.00,
    'DESAYUNO',
    5.50
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'HUEVOS',
    30.00,
    'DESAYUNO',
    05.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'CALDO',
    130.00,
    'ALMUERZO',
    95.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'ENSALADA',
    80.00,
    'ALMUERZO',
    55.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'SOPA',
    30.00,
    'CENA',
    15.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'CERVEZA',
    30.00,
    'BEBIDA',
    15.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'GASEOSA',
    30.00,
    'BEBIDA',
    15.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'JUGO',
    15.00,
    'BEBIDA',
    10.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'AGUA',
    10.00,
    'BEBIDA',
    5.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'JUGO',
    30.00,
    'BEBIDA',
    15.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'PASTELILLOS',
    40.00,
    'POSTRE',
    25.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'GALLETAS',
    30.00,
    'POSTRE',
    15.00
);

INSERT INTO horizonte_gt.food(
    "name_food",
    "price",
    "type",
    "cost"
) VALUES (
    'PALOMITAS',
    30.00,
    'FRITURA',
    15.00
);



-- --------------------------------------------
-- INSERTS FOR AIRPLANE MENU CLASS 
-- --------------------------------------------
INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    11,
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    12,
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    13,
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    14,
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    16,
    2,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    17,
    2,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    45,
    true,
    18,
    2,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    1,
    1,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    2,
    3,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    3,
    4,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    4,
    4,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    5,
    5,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.airplane_menu_class(
    "existing_amount",
    "is_free",
    "id_food",
    "id_airplane",
    "name_class"
) VALUES (
    30,
    false,
    6,
    6,
    'PRIMERA CLASE'
);

-- --------------------------------------------
-- INSERTS FOR MENU PURCHASE
-- --------------------------------------------
INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    2,
    8,
    150
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    2,
    9,
    150
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    3,
    10,
    200
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    3,
    11,
    80
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    4,
    12,
    30
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    5,
    12,
    30
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    6,
    1,
    0
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    6,
    2,
    0
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    7,
    7,
    0
);

INSERT INTO horizonte_gt.menu_purchase(
    "id_ticket",
    "id_airplane_menu_class",
    "price"
) VALUES (
    6,
    3,
    0
);

-- --------------------------------------------
-- INSERTS FOR WIFI PRICE  
-- --------------------------------------------
INSERT INTO horizonte_gt.wifi_price(
    "price",
    "class_name_class"
) VALUES (
    100,
    'PRIMERA CLASE'
);

INSERT INTO horizonte_gt.wifi_price(
    "price",
    "class_name_class"
) VALUES (
    100,
    'CLASE BUSINESS'
);

INSERT INTO horizonte_gt.wifi_price(
    "price",
    "class_name_class"
) VALUES (
    100,
    'CLASE ECONOMY'
);

INSERT INTO horizonte_gt.wifi_price(
    "price",
    "class_name_class"
) VALUES (
    100,
    'CLASE ECONOMY BASICA'
);

-- --------------------------------------------
-- INSERTS FOR WIFI PURCHASE  
-- --------------------------------------------
INSERT INTO horizonte_gt.wifi_purchase(
    "user_username",
    "id_ticket",
    "price",
    "id_wifi_price"
) VALUES (
    'alejandroBR',
    2,
    100,
    1
);

INSERT INTO horizonte_gt.wifi_purchase(
    "user_username",
    "id_ticket",
    "price",
    "id_wifi_price"
) VALUES (
    'pabloBR',
    10,
    100,
    1
);

INSERT INTO horizonte_gt.wifi_purchase(
    "user_username",
    "id_ticket",
    "price",
    "id_wifi_price"
) VALUES (
    'sharonZG',
    11,
    100,
    1
);

-- --------------------------------------------
-- INSERTS FOR MOVIE
-- --------------------------------------------
INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    100,
    'STAR WARS 1',
    'CIENCIA FICCION',
    'B',
    150,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    100,
    'STAR WARS 2',
    'CIENCIA FICCION',
    'B',
    200,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    100,
    'STAR WARS 3',
    'CIENCIA FICCION',
    'B',
    300,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    100,
    'STAR WARS 4',
    'CIENCIA FICCION',
    'B',
    350,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    300,
    'STAR WARS 5',
    'CIENCIA FICCION',
    'B',
    400,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    300,
    'STAR WARS 6',
    'CIENCIA FICCION',
    'B',
    400,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    300,
    'STAR WARS 7',
    'CIENCIA FICCION',
    'B',
    400,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    300,
    'STAR WARS 8',
    'CIENCIA FICCION',
    'B',
    450,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    400,
    'STAR WARS 9',
    'CIENCIA FICCION',
    'B',
    500,
    '1:45'
);

INSERT INTO horizonte_gt.movie(
    "cost",
    "description",
    "category",
    "classification",
    "price",
    "duration"
) VALUES (
    500,
    'STAR WARS 10',
    'CIENCIA FICCION',
    'B',
    600,
    '1:45'
);

-- --------------------------------------------
-- INSERTS FOR MOVIE PURCHASE
-- --------------------------------------------
INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    2,
    1,
    150
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    2,
    2,
    200
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    3,
    1,
    150
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    3,
    3,
    350
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    4,
    4,
    350
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    5,
    6,
    400
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    5,
    7,
    400
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    7,
    8,
    450
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    7,
    10,
    450
);

INSERT INTO horizonte_gt.movie_purchase (
    "id_ticket",
    "id_movie",
    "price"
) VALUES (
    10,
    1,
    150
);

-- --------------------------------------------
-- INSERTS FOR MOVIE PURCHASE
-- --------------------------------------------
INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-01-01',
    8,
    '123456789',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-02-01',
    8,
    '123456789',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-02-01',
    8,
    '1234567891',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-02-15',
    8,
    '1234567891',
    125,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-03-01',
    8,
    '1234567892',
    78,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-03-10',
    8,
    '1234567892',
    85,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-04-01',
    8,
    '1234567893',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-04-04',
    8,
    '1234567893',
    85,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-01-04',
    8,
    '123456789',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-01-04',
    8,
    '1234567891',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-04-18',
    8,
    '1234567892',
    200,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-12-01',
    8,
    '1234567893',
    100,
    true
);

INSERT INTO horizonte_gt.hours_worked (
    "date",
    "amount_hours",
    "id_employee",
    "amount_salary",
    "is_paid"
) VALUES (
    '2022-10-01',
    8,
    '1234567893',
    100,
    true
);

