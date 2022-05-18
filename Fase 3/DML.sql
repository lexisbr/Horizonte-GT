-- -----------------------------------------------------
-- Schema horizonte_gt
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS "horizonte_gt" CASCADE;

-- -----------------------------------------------------
-- Schema horizonte_gt
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS  "horizonte_gt"  ;
SET SCHEMA 'horizonte_gt' ;

-- -----------------------------------------------------
-- Table "horizonte_gt"."account_type"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."account_type" CASCADE;

CREATE TABLE  "horizonte_gt"."account_type" (
  "account_type_name" VARCHAR(50) NOT NULL,
  "required_flights" INT NOT NULL CHECK("required_flights">=0),
  "miles_per_dollar" INT NOT NULL CHECK("miles_per_dollar">=0),
  "required_miles" DECIMAL NOT NULL CHECK("required_miles">=0),
  "percentage_flight_cost" DECIMAL NOT NULL,
  "required_years_prev_acc" INT NULL CHECK("required_years_prev_acc">=0),
  "prev_account_type_name" VARCHAR(50) NULL,
  PRIMARY KEY ("account_type_name"),
  CONSTRAINT "fk_account_type_account_type1"
    FOREIGN KEY ("prev_account_type_name")
    REFERENCES "horizonte_gt"."account_type" ("account_type_name")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);



-- -----------------------------------------------------
-- Table "horizonte_gt"."user"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."user" CASCADE;

CREATE TABLE  "horizonte_gt"."user" (
  "username" VARCHAR(60) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "firstname" VARCHAR(35) NOT NULL,
  "lastname" VARCHAR(35) NOT NULL,
  "identification_number" VARCHAR(100) NOT NULL,
  "password" VARCHAR(200) NOT NULL,
  "birth_date" DATE NOT NULL,
  "gender" VARCHAR(30) NOT NULL,
  "acumulated_miles" INT NOT NULL CHECK("acumulated_miles">=0),
  "account_type_name" VARCHAR(50) NOT NULL,
  "phones" VARCHAR(45)[] NULL,
  PRIMARY KEY ("username"),
  CONSTRAINT "fk_user_account_type"
    FOREIGN KEY ("account_type_name")
    REFERENCES "horizonte_gt"."account_type" ("account_type_name")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    UNIQUE(email)
);


-- -----------------------------------------------------
-- Table "horizonte_gt"."document_type"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."document_type" CASCADE;

CREATE TABLE  "horizonte_gt"."document_type" (
  "id_document_type" SERIAL,
  "name_type" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_document_type"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."user_document"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."user_document" CASCADE;

CREATE TABLE  "horizonte_gt"."user_document" (
  "id_user_document" SERIAL NOT NULL ,
  "path_document" VARCHAR(1024) NULL,
  "due_date" DATE NOT NULL,
  "id_document_type" INT NOT NULL,
  "username" VARCHAR(60) NOT NULL,
  PRIMARY KEY ("id_user_document", "id_document_type"),
  CONSTRAINT "fk_user_document_document_type1"
    FOREIGN KEY ("id_document_type")
    REFERENCES "horizonte_gt"."document_type" ("id_document_type")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_user_document_user1"
    FOREIGN KEY ("username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."nationality"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."nationality" CASCADE;

CREATE TABLE  "horizonte_gt"."nationality" (
  "nationality_name" VARCHAR(30) NOT NULL,
  "country" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("nationality_name"),
  UNIQUE(country));


-- -----------------------------------------------------
-- Table "horizonte_gt"."user_nationality"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."user_nationality" CASCADE;

CREATE TABLE  "horizonte_gt"."user_nationality" (
  "user_username" VARCHAR(60) NOT NULL,
  "nationality_name" VARCHAR(30) NOT NULL,
  PRIMARY KEY ("user_username", "nationality_name"),
  CONSTRAINT "fk_user_nationality_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_user_nationality_nationality1"
    FOREIGN KEY ("nationality_name")
    REFERENCES "horizonte_gt"."nationality" ("nationality_name")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table "horizonte_gt"."courtesy"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."courtesy" CASCADE;

CREATE TABLE  "horizonte_gt"."courtesy" (
  "id_courtesy" SERIAL NOT NULL
  "name_courtesy" VARCHAR(40) NOT NULL,
  "description" VARCHAR(255) NULL,
  PRIMARY KEY ("id_courtesy"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."account_type_courtesy"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."account_type_courtesy" CASCADE;

CREATE TABLE  "horizonte_gt"."account_type_courtesy" (
  "account_type_name" VARCHAR(50) NOT NULL,
  "name_courtesy" VARCHAR(40) NOT NULL,
  PRIMARY KEY ("account_type_name", "name_courtesy"),
  CONSTRAINT "fk_type_account_courtesy_account_type1"
    FOREIGN KEY ("account_type_name")
    REFERENCES "horizonte_gt"."account_type" ("account_type_name")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_type_account_courtesy_courtesy1"
    FOREIGN KEY ("name_courtesy")
    REFERENCES "horizonte_gt"."courtesy" ("name_courtesy")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."purchaser"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."purchaser" CASCADE;

CREATE TABLE  "horizonte_gt"."purchaser" (
  "identification_number" BIGINT NOT NULL ,
  "firstname" VARCHAR(45) NOT NULL,
  "lastname" VARCHAR(45) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "phones" VARCHAR(45)[] NOT NULL,
  "user_username" VARCHAR(60) NULL,
  PRIMARY KEY ("identification_number"),
  CONSTRAINT "fk_purchaser_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."payment_method"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."payment_method" CASCADE;

CREATE TABLE  "horizonte_gt"."payment_method" (
  "card_number" BIGINT NOT NULL,
  "owner_name" VARCHAR(45) NOT NULL,
  "brand" VARCHAR(45) NOT NULL,
  "card_type" VARCHAR(45) NOT NULL,
  "is_default" BOOLEAN NOT NULL,
  "due_date" DATE NOT NULL,
  "user_username" VARCHAR(60) NULL,
  "purchaser_identification_number" BIGINT NULL,
  PRIMARY KEY ("card_number"),
  CONSTRAINT "fk_user_payment_method_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_payment_method_purchaser1"
    FOREIGN KEY ("purchaser_identification_number")
    REFERENCES "horizonte_gt"."purchaser" ("identification_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."passenger"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."passenger" CASCADE;

CREATE TABLE  "horizonte_gt"."passenger" (
  "passport_number" BIGINT NOT NULL ,
  "identification_number" VARCHAR(45) NOT NULL,
  "firstname" VARCHAR(45) NOT NULL,
  "lastname" VARCHAR(45) NOT NULL,
  "email" VARCHAR(45) NOT NULL,
  "gender" VARCHAR(45) NOT NULL,
  "birth_date" DATE NOT NULL,
  "user_username" VARCHAR(60) NULL,
  PRIMARY KEY ("passport_number"),
  CONSTRAINT "fk_passenger_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."country"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."country" CASCADE;

CREATE TABLE  "horizonte_gt"."country" (
  "name_country" VARCHAR(45) NOT NULL,
  "abbreviation" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("name_country"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."city"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."city" CASCADE;

CREATE TABLE  "horizonte_gt"."city" (
  "id_city" SERIAL,
  "name_city" VARCHAR(45) NOT NULL,
  "name_country" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_city"),
  CONSTRAINT "fk_city_country1"
    FOREIGN KEY ("name_country")
    REFERENCES "horizonte_gt"."country" ("name_country")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."airport"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."airport" CASCADE;

CREATE TABLE  "horizonte_gt"."airport" (
  "id_airport" SERIAL,
  "name_airport" VARCHAR(45) NOT NULL,
  "id_city" INT NOT NULL,
  PRIMARY KEY ("id_airport"),
  CONSTRAINT "fk_airport_city1"
    FOREIGN KEY ("id_city")
    REFERENCES "horizonte_gt"."city" ("id_city")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."gate"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."gate" CASCADE;

CREATE TABLE  "horizonte_gt"."gate" (
  "id_gate" INT NOT NULL ,
  "name_gate" VARCHAR(45) NOT NULL,
  "airport_id_airport" INT NOT NULL,
  PRIMARY KEY ("id_gate"),
  CONSTRAINT "fk_gate_airport1"
    FOREIGN KEY ("airport_id_airport")
    REFERENCES "horizonte_gt"."airport" ("id_airport")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."airplane_type"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."airplane_type" CASCADE;

CREATE TABLE  "horizonte_gt"."airplane_type" (
  "id_airplane_type" SERIAL NOT NULL ,
  "name" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_airplane_type"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_plan"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_plan" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_plan" (
  "id_flight_plan" SERIAL,
  "distance_miles" INT NOT NULL CHECK("distance_miles">0),
  "is_temporal" BOOLEAN NOT NULL,
  "takeoff_time" TIME NOT NULL,
  "arrival_time" TIME NOT NULL,
  "boarding_time" TIME NOT NULL,
  "available_days" VARCHAR(30)[] NOT NULL,
  "id_gate_takeoff" INT NOT NULL,
  "id_gate_arrival" INT NOT NULL,
  "id_plane_type" INT NOT NULL,
  PRIMARY KEY ("id_flight_plan"),
  CONSTRAINT "fk_flight_plan_gate1"
    FOREIGN KEY ("id_gate_takeoff")
    REFERENCES "horizonte_gt"."gate" ("id_gate")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_plan_gate2"
    FOREIGN KEY ("id_gate_arrival")
    REFERENCES "horizonte_gt"."gate" ("id_gate")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_plan_plane_type1"
    FOREIGN KEY ("id_plane_type")
    REFERENCES "horizonte_gt"."airplane_type" ("id_airplane_type")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_plan_temporary"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_plan_temporary" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_plan_temporary" (
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "status" BOOLEAN NOT NULL,
  "id_flight_plan" INT NOT NULL,
  PRIMARY KEY ("id_flight_plan"),
  CONSTRAINT "fk_flight_plan_temporary_flight_plan1"
    FOREIGN KEY ("id_flight_plan")
    REFERENCES "horizonte_gt"."flight_plan" ("id_flight_plan")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."airplane"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."airplane" CASCADE;

CREATE TABLE  "horizonte_gt"."airplane" (
  "id_airplane" SERIAL,
  "status" VARCHAR(45) NOT NULL,
  "purchase_date" DATE NOT NULL,
  "first_flight_date" DATE NOT NULL,
  "last_maintenance_date" DATE NOT NULL,
  "available_seats" INT NOT NULL CHECK("available_seats">0),
  "available_seats_employees" INT NOT NULL CHECK("available_seats_employees">0),
  "id_airplane_type" INT NOT NULL,
  PRIMARY KEY ("id_airplane"),
  CONSTRAINT "fk_plane_plane_type1"
    FOREIGN KEY ("id_airplane_type")
    REFERENCES "horizonte_gt"."airplane_type" ("id_airplane_type")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."class"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."class" CASCADE;

CREATE TABLE  "horizonte_gt"."class" (
  "name_class" VARCHAR(30) NOT NULL,
  "abbreviation" VARCHAR(2) NOT NULL,
  "hand_bags_number" INT NOT NULL CHECK("hand_bags_number">=0),
  "checked_bags_number" INT NOT NULL CHECK("checked_bags_number">=0),
  "location" VARCHAR(45) NOT NULL,
  "exchange_fees" INT NOT NULL CHECK("checked_bags_number">=0),
  "accept_refunds" BOOLEAN NOT NULL,
  "allows_insurance" BOOLEAN NOT NULL,
  "seat_is_assigned" BOOLEAN NOT NULL,
  PRIMARY KEY ("name_class"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."flght_plan_class"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_plan_class" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_plan_class" (
  "id_flight_plan" INT NOT NULL,
  "name_class" VARCHAR(30) NOT NULL,
  "adults_price" DECIMAL NOT NULL CHECK("adults_price">0),
  "child_price" DECIMAL NOT NULL CHECK("child_price">0),
  "pct_increase_child" DECIMAL NOT NULL CHECK("pct_increase_child">=0),
  "pct_increase_adults" DECIMAL NOT NULL CHECK("pct_increase_adults">=0),
  "price_increase_limit" INT NOT NULL CHECK("price_increase_limit">=0),
  PRIMARY KEY ("id_flight_plan", "name_class"),
  CONSTRAINT "fk_flght_plan_class_flight_plan1"
    FOREIGN KEY ("id_flight_plan")
    REFERENCES "horizonte_gt"."flight_plan" ("id_flight_plan")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flght_plan_class_class1"
    FOREIGN KEY ("name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."seat"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."seat" CASCADE;

CREATE TABLE  "horizonte_gt"."seat" (
  "number_row" VARCHAR(5) NOT NULL,
  "letter_row" VARCHAR(5) NOT NULL,
  "id_airplane" INT NOT NULL,
  "name_class" VARCHAR(30) NOT NULL,
  PRIMARY KEY ("id_airplane", "letter_row", "number_row"),
  CONSTRAINT "fk_seat_plane1"
    FOREIGN KEY ("id_airplane")
    REFERENCES "horizonte_gt"."airplane" ("id_airplane")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_seat_class1"
    FOREIGN KEY ("name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."distribution_class_airplane"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."distribution_class_airplane" CASCADE;

CREATE TABLE  "horizonte_gt"."distribution_class_airplane" (
  "id_airplane" INT NOT NULL,
  "name_class" VARCHAR(30) NOT NULL,
  "assigned_rows" INT NOT NULL CHECK("assigned_rows">=0),
  "seats_per_row" INT NOT NULL CHECK("seats_per_row">=0),
  PRIMARY KEY ("id_airplane", "name_class"),
  CONSTRAINT "fk_distribution_class_airplane_airplane1"
    FOREIGN KEY ("id_airplane")
    REFERENCES "horizonte_gt"."airplane" ("id_airplane")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_distribution_class_airplane_class1"
    FOREIGN KEY ("name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_status"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_status" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_status" (
  "name_flight_status" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("name_flight_status"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight" CASCADE;

CREATE TABLE  "horizonte_gt"."flight" (
  "id_flight" SERIAL,
  "flight_date" DATE NOT NULL,
  "arrival_time" TIME NULL,
  "takeoff_time" TIME NULL,
  "id_flight_plan" INT NOT NULL,
  "id_airplane" INT NOT NULL,
  "id_gate_arrival" INT NOT NULL,
  "id_gate_takeoff" INT NOT NULL,
  "name_flight_status" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_flight"),
  CONSTRAINT "fk_flight_flight_plan1"
    FOREIGN KEY ("id_flight_plan")
    REFERENCES "horizonte_gt"."flight_plan" ("id_flight_plan")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_airplane1"
    FOREIGN KEY ("id_airplane")
    REFERENCES "horizonte_gt"."airplane" ("id_airplane")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_gate1"
    FOREIGN KEY ("id_gate_arrival")
    REFERENCES "horizonte_gt"."gate" ("id_gate")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_gate2"
    FOREIGN KEY ("id_gate_takeoff")
    REFERENCES "horizonte_gt"."gate" ("id_gate")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_flight_status1"
    FOREIGN KEY ("name_flight_status")
    REFERENCES "horizonte_gt"."flight_status" ("name_flight_status")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_status_logger"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_status_logger" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_status_logger" (
  "id_fight_status_logger" SERIAL,
  "time" TIME NOT NULL,
  "date" DATE NOT NULL,
  "id_flight" INT NOT NULL,
  "name_flight_status" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_fight_status_logger"),
  CONSTRAINT "fk_flight_status_logger_flight1"
    FOREIGN KEY ("id_flight")
    REFERENCES "horizonte_gt"."flight" ("id_flight")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_status_logger_flight_status1"
    FOREIGN KEY ("name_flight_status")
    REFERENCES "horizonte_gt"."flight_status" ("name_flight_status")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."purchase"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."purchase" CASCADE;

CREATE TABLE  "horizonte_gt"."purchase" (
  "id_purchase" SERIAL,
  "total" DECIMAL NOT NULL CHECK("total">0),
  "purchase_date" TIMESTAMP NOT NULL,
  "total_tickets" INT NOT NULL CHECK("total_tickets">0),
  "cancellation_date" TIMESTAMP NULL,
  "modification_date" TIMESTAMP NULL,
  "status" VARCHAR(45) NOT NULL,
  "identification_number" BIGINT NOT NULL,
  "card_number" BIGINT NOT NULL,
  PRIMARY KEY ("id_purchase"),
  CONSTRAINT "fk_purchase_purchaser1"
    FOREIGN KEY ("identification_number")
    REFERENCES "horizonte_gt"."purchaser" ("identification_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_purchase_payment_method1"
    FOREIGN KEY ("card_number")
    REFERENCES "horizonte_gt"."payment_method" ("card_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table "horizonte_gt"."redeemed_miles"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."redeemed_miles" CASCADE;

CREATE TABLE  "horizonte_gt"."redeemed_miles" (
  "id_redeemed_miles" SERIAL,
  "old_total_miles" INT NOT NULL CHECK("old_total_miles">=0),
  "new_total_miles" INT NOT NULL CHECK("new_total_miles">=0),
  "redeemed_miles" INT NOT NULL CHECK("redeemed_miles">0),
  "user_username" VARCHAR(60) NOT NULL,
  "id_purchase" INT NOT NULL,
  PRIMARY KEY ("id_redeemed_miles"),
  CONSTRAINT "fk_redeemed_miles_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_id_purchase1"
    FOREIGN KEY ("id_purchase")
    REFERENCES "horizonte_gt"."purchase" ("id_purchase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table "horizonte_gt"."assignment_seat_ticket"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."assignment_seat_ticket" CASCADE;

CREATE TABLE  "horizonte_gt"."assignment_seat_ticket" (
  "id_airplane" INT NOT NULL,
  "letter_row" VARCHAR(5) NOT NULL,
  "seat_number_row" VARCHAR(5) NOT NULL,
  "id_flight" INT NOT NULL,
  "status" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_airplane", "letter_row", "seat_number_row", "id_flight"),
  CONSTRAINT "fk_assignment_seat1"
    FOREIGN KEY ("id_airplane" , "letter_row" , "seat_number_row")
    REFERENCES "horizonte_gt"."seat" ("id_airplane" , "letter_row" , "number_row")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_assignment_flight1"
    FOREIGN KEY ("id_flight")
    REFERENCES "horizonte_gt"."flight" ("id_flight")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."insurance_percentage_price"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."insurance_percentage_price" CASCADE;

CREATE TABLE  "horizonte_gt"."insurance_percentage_price" (
  "id_insurance_percentage_price" SERIAL,
  "percentage_of_price" DECIMAL NOT NULL CHECK("percentage_of_price">0),
  PRIMARY KEY ("id_insurance_percentage_price"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."double_trip_discount"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."double_trip_discount" CASCADE;

CREATE TABLE  "horizonte_gt"."double_trip_discount" (
  "id_double_trip_discount" SERIAL ,
  "discount" DECIMAL NOT NULL CHECK("discount">0),
  "name_class" VARCHAR(30) NOT NULL,
  PRIMARY KEY ("id_double_trip_discount"),
  CONSTRAINT "fk_double_trip_discount_class1"
    FOREIGN KEY ("name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."ticket"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."ticket" CASCADE;

CREATE TABLE  "horizonte_gt"."ticket" (
  "id_ticket" SERIAL ,
  "price" DECIMAL NOT NULL CHECK("price">0),
  "id_purchase" INT NOT NULL,
  "passenger_passport_number" BIGINT NOT NULL,
  "id_airplane" INT NOT NULL,
  "seat_letter_row" VARCHAR(5) NOT NULL,
  "seat_number_row" VARCHAR(5) NOT NULL,
  "id_flight" INT NOT NULL,
  "id_return_ticket" INT NULL,
  "has_insurance" BOOLEAN NOT NULL,
  "id_insurance_percentage_price" INT NULL,
  "id_double_trip_discount" INT NULL,
  "status" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_ticket"),
  CONSTRAINT "fk_ticket_purchase1"
    FOREIGN KEY ("id_purchase")
    REFERENCES "horizonte_gt"."purchase" ("id_purchase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticket_passenger1"
    FOREIGN KEY ("passenger_passport_number")
    REFERENCES "horizonte_gt"."passenger" ("passport_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticket_assignment_seat_ticket1"
    FOREIGN KEY ("id_airplane" , "seat_letter_row" , "seat_number_row" , "id_flight")
    REFERENCES "horizonte_gt"."assignment_seat_ticket" ("id_airplane" , "letter_row" , "seat_number_row" , "id_flight")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticket_ticket1"
    FOREIGN KEY ("id_return_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticket_insurance_percentage_price1"
    FOREIGN KEY ("id_insurance_percentage_price")
    REFERENCES "horizonte_gt"."insurance_percentage_price" ("id_insurance_percentage_price")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticket_double_trip_discount1"
    FOREIGN KEY ("id_double_trip_discount")
    REFERENCES "horizonte_gt"."double_trip_discount" ("id_double_trip_discount")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."passenger_nationality"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."passenger_nationality" CASCADE;

CREATE TABLE  "horizonte_gt"."passenger_nationality" (
  "nationality_name" VARCHAR(30) NOT NULL,
  "passenger_passport_number" BIGINT NOT NULL,
  PRIMARY KEY ("nationality_name", "passenger_passport_number"),
  CONSTRAINT "fk_user_nationality_nationality10"
    FOREIGN KEY ("nationality_name")
    REFERENCES "horizonte_gt"."nationality" ("nationality_name")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_passenger_nationality_passenger1"
    FOREIGN KEY ("passenger_passport_number")
    REFERENCES "horizonte_gt"."passenger" ("passport_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."pet"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."pet" CASCADE;

CREATE TABLE  "horizonte_gt"."pet" (
  "id_pet" SERIAL ,
  "specie" VARCHAR(45) NOT NULL,
  "name" VARCHAR(45) NOT NULL,
  "description" VARCHAR(45) NULL,
  "veterinary_certificate_path" VARCHAR(45) NOT NULL,
  "weight" DECIMAL NOT NULL,
  PRIMARY KEY ("id_pet"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."vaccine_list"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."vaccine_list" CASCADE;

CREATE TABLE  "horizonte_gt"."vaccine_list" (
  "vaccine_name" VARCHAR(45) NOT NULL,
  "id_pet" INT NOT NULL,
  PRIMARY KEY ("vaccine_name", "id_pet"),
  CONSTRAINT "fk_vaccine_list_pet1"
    FOREIGN KEY ("id_pet")
    REFERENCES "horizonte_gt"."pet" ("id_pet")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

---- 29

-- -----------------------------------------------------
-- Table "horizonte_gt"."pet_flight_price"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."pet_flight_price" CASCADE;

CREATE TABLE  "horizonte_gt"."pet_flight_price" (
  "id_pet_flight_price" SERIAL ,
  "max_weight" DECIMAL NOT NULL CHECK("max_weight">0),
  "airplane_zone" VARCHAR(45) NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0), 
  PRIMARY KEY ("id_pet_flight_price"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."pet_ticket"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."pet_ticket" CASCADE;

CREATE TABLE  "horizonte_gt"."pet_ticket" (
  "id_pet" INT NOT NULL,
  "id_ticket" INT NOT NULL,
  "id_pet_flight_price" INT NOT NULL,
  PRIMARY KEY ("id_pet", "id_ticket"),
  CONSTRAINT "fk_pet_flight_pet1"
    FOREIGN KEY ("id_pet")
    REFERENCES "horizonte_gt"."pet" ("id_pet")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_pet_flight_ticket1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_pet_ticket_pet_flight_price1"
    FOREIGN KEY ("id_pet_flight_price")
    REFERENCES "horizonte_gt"."pet_flight_price" ("id_pet_flight_price")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."boarding"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."boarding" CASCADE;

CREATE TABLE  "horizonte_gt"."boarding" (
  "boarding_time" TIME NOT NULL,
  "departure_time" TIME NULL,
  "id_ticket" INT NOT NULL,
  PRIMARY KEY ("id_ticket"),
  CONSTRAINT "fk_boarding_ticket1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."luggage_type"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."luggage_type" CASCADE;

CREATE TABLE  "horizonte_gt"."luggage_type" (
  "id_luggage_type" SERIAL  ,
  "max_value" DECIMAL NOT NULL CHECK("max_value">=0),
  "assigned_zone" VARCHAR(45) NOT NULL,
  "name_type_luggage" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_luggage_type"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."luggage_price"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."luggage_price" CASCADE;

CREATE TABLE  "horizonte_gt"."luggage_price" (
  "luggage_number" INT NOT NULL CHECK("luggage_number">0),
  "price" DECIMAL NOT NULL CHECK("price">=0),
  "id_luggage_type" INT NOT NULL,
  PRIMARY KEY ("luggage_number", "id_luggage_type"),
  CONSTRAINT "fk_luggage_price_luggage_type1"
    FOREIGN KEY ("id_luggage_type")
    REFERENCES "horizonte_gt"."luggage_type" ("id_luggage_type")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."luggage"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."luggage" CASCADE;

CREATE TABLE  "horizonte_gt"."luggage" (
  "weight" DECIMAL NOT NULL CHECK("weight">0),
  "height" DECIMAL NULL CHECK("height">0),
  "width" DECIMAL NULL CHECK("width">0),
  "volume" DECIMAL NULL CHECK("volume">0),
  "luggage_number" INT NOT NULL,
  "id_luggage_type" INT NOT NULL,
  "id_ticket" INT NOT NULL,
  "status" VARCHAR(45) NOT NULL,
  "isDelivered" BOOLEAN NOT NULL,
  PRIMARY KEY ("luggage_number", "id_luggage_type", "id_ticket"),
  CONSTRAINT "fk_luggage_luggage_price1"
    FOREIGN KEY ("luggage_number" , "id_luggage_type")
    REFERENCES "horizonte_gt"."luggage_price" ("luggage_number" , "id_luggage_type")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_luggage_boarding1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."boarding" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."food"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."food" CASCADE;

CREATE TABLE  "horizonte_gt"."food" (
  "id_food" SERIAL,
  "name_food" VARCHAR(45) NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  "description" VARCHAR(180) NULL,
  "type" VARCHAR(45) NOT NULL ,
  "cost" DECIMAL NOT NULL CHECK("cost">0),
  PRIMARY KEY ("id_food"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."airplane_menu_class"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."airplane_menu_class" CASCADE;

CREATE TABLE  "horizonte_gt"."airplane_menu_class" (
  "id_airplane_menu_class" SERIAL ,
  "existing_amount" INT NOT NULL CHECK("existing_amount">=0),
  "is_free" BOOLEAN NOT NULL,
  "id_food" INT NOT NULL,
  "id_airplane" INT NOT NULL,
  "name_class" VARCHAR(30) NOT NULL,
  PRIMARY KEY ("id_airplane_menu_class"),
  CONSTRAINT "fk_flight_menu_food1"
    FOREIGN KEY ("id_food")
    REFERENCES "horizonte_gt"."food" ("id_food")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_menu_airplane1"
    FOREIGN KEY ("id_airplane")
    REFERENCES "horizonte_gt"."airplane" ("id_airplane")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_menu_class_class1"
    FOREIGN KEY ("name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."ingredients"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."ingredients" CASCADE;

CREATE TABLE  "horizonte_gt"."ingredients" (
  "id_ingredients" SERIAL ,
  "name" VARCHAR(45) NOT NULL,
  "cost" DECIMAL NOT NULL CHECK("cost">0),
  PRIMARY KEY ("id_ingredients"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."food_ingredients"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."food_ingredients" CASCADE;

CREATE TABLE  "horizonte_gt"."food_ingredients" (
  "id_ingredients" INT NOT NULL,
  "id_food" INT NOT NULL,
  "existing_amount" INT NOT NULL CHECK("existing_amount">0),
  "id_flight_menu" INT NOT NULL,
  PRIMARY KEY ("id_ingredients", "id_food"),
  CONSTRAINT "fk_food_ingredients_ingredients1"
    FOREIGN KEY ("id_ingredients")
    REFERENCES "horizonte_gt"."ingredients" ("id_ingredients")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_food_ingredients_food1"
    FOREIGN KEY ("id_food")
    REFERENCES "horizonte_gt"."food" ("id_food")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_food_ingredients_flight_menu_class1"
    FOREIGN KEY ("id_flight_menu")
    REFERENCES "horizonte_gt"."airplane_menu_class" ("id_airplane_menu_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- -----------------------------------------------------
-- Table "horizonte_gt"."menu_purchase"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."menu_purchase" CASCADE;

CREATE TABLE  "horizonte_gt"."menu_purchase" (
  "id_ticket" SERIAL ,
  "id_airplane_menu_class" INTEGER NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  PRIMARY KEY ("id_ticket","id_airplane_menu_class"),
  CONSTRAINT "fk_menu_purchase1"
    FOREIGN KEY ("id_airplane_menu_class")
    REFERENCES "horizonte_gt"."airplane_menu_class" ("id_airplane_menu_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_menu_purchase2"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."wifi_price"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."wifi_price" CASCADE;

CREATE TABLE  "horizonte_gt"."wifi_price" (
  "id_wifi_price" SERIAL ,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  "class_name_class" VARCHAR(30) NOT NULL,
  PRIMARY KEY ("id_wifi_price"),
  CONSTRAINT "fk_wifi_price_class1"
    FOREIGN KEY ("class_name_class")
    REFERENCES "horizonte_gt"."class" ("name_class")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."wifi_purchase"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."wifi_purchase" CASCADE;

CREATE TABLE  "horizonte_gt"."wifi_purchase" (
  "user_username" VARCHAR(60) NOT NULL,
  "id_ticket" INT NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  "id_wifi_price" INT NOT NULL,
  PRIMARY KEY ("user_username", "id_ticket"),
  CONSTRAINT "fk_wifi_purchase_wifi_price1"
    FOREIGN KEY ("id_wifi_price")
    REFERENCES "horizonte_gt"."wifi_price" ("id_wifi_price")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_wifi_purchase_user1"
    FOREIGN KEY ("user_username")
    REFERENCES "horizonte_gt"."user" ("username")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_wifi_purchase_ticket1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."position"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."position" CASCADE;

CREATE TABLE  "horizonte_gt"."position" (
  "id_position" SERIAL ,
  "name" VARCHAR(45) NOT NULL,
  "is_aboard" BOOLEAN NOT NULL,
  "hourly_base_salary" DECIMAL NOT NULL,
  PRIMARY KEY ("id_position"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."employee"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."employee" CASCADE;

CREATE TABLE  "horizonte_gt"."employee" (
  "id_employee" BIGINT NOT NULL ,
  "firstname" VARCHAR(45) NOT NULL,
  "lastname" VARCHAR(45) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "employee_type" VARCHAR(45) NOT NULL,
  "phone" VARCHAR(45) NOT NULL,
  "birth_date" DATE NOT NULL,
  "hiring_date" DATE NOT NULL,
  "id_position" INT NOT NULL,
  "hour_base_salary" DECIMAL NOT NULL,
  PRIMARY KEY ("id_employee"),
  CONSTRAINT "fk_employee_position1"
    FOREIGN KEY ("id_position")
    REFERENCES "horizonte_gt"."position" ("id_position")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."minor_passenger"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."minor_passenger" CASCADE;

CREATE TABLE  "horizonte_gt"."minor_passenger" (
  "id_minor_passenger" SERIAL ,
  "id_ticket" INT NOT NULL,
  "minor_passenger_passport_number" BIGINT NOT NULL,
  "escort_passport_number" BIGINT NULL,
  "escort_id_employee" INT NULL,
  PRIMARY KEY ("id_minor_passenger"),
  CONSTRAINT "fk_minor_passenger_passenger1"
    FOREIGN KEY ("minor_passenger_passport_number")
    REFERENCES "horizonte_gt"."passenger" ("passport_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_minor_passenger_passenger2"
    FOREIGN KEY ("escort_passport_number")
    REFERENCES "horizonte_gt"."passenger" ("passport_number")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_minor_passenger_ticket1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_minor_passenger_employee1"
    FOREIGN KEY ("escort_id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."movie"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."movie" CASCADE;

CREATE TABLE  "horizonte_gt"."movie" (
  "id_movie" SERIAL NOT NULL,
  "cost" DECIMAL NOT NULL CHECK("cost">0),
  "description" VARCHAR(255) NOT NULL,
  "category" VARCHAR(45) NOT NULL,
  "classification" VARCHAR(45) NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  "duration" TIME NOT NULL,
  PRIMARY KEY ("id_movie"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."movie_purchase"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."movie_purchase" CASCADE;

CREATE TABLE  "horizonte_gt"."movie_purchase" (
  "id_ticket" INT NOT NULL,
  "id_movie" INT NOT NULL,
  "price" DECIMAL NOT NULL CHECK("price">=0),
  PRIMARY KEY ("id_movie", "id_ticket"),
  CONSTRAINT "fk_movie_purchase_ticket1"
    FOREIGN KEY ("id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_movie_purchase_movie1"
    FOREIGN KEY ("id_movie")
    REFERENCES "horizonte_gt"."movie" ("id_movie")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."artist"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."artist" CASCADE;

CREATE TABLE  "horizonte_gt"."artist" (
  "id_artist" SERIAL,
  "firstname" VARCHAR(45) NOT NULL,
  "lastname" VARCHAR(45) NOT NULL,
  "nacionality" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_artist"));


-- -----------------------------------------------------
-- Table "horizonte_gt"."artist_movie"*
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."artist_movie" CASCADE;

CREATE TABLE  "horizonte_gt"."artist_movie" (
  "artist_type" VARCHAR(45) NOT NULL,
  "movie_id_movie" INT NOT NULL,
  "artist_id_artist" INT NOT NULL,
  PRIMARY KEY ("movie_id_movie", "artist_id_artist"),
  CONSTRAINT "fk_artist_movie_movie1"
    FOREIGN KEY ("movie_id_movie")
    REFERENCES "horizonte_gt"."movie" ("id_movie")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_artist_movie_artist1"
    FOREIGN KEY ("artist_id_artist")
    REFERENCES "horizonte_gt"."artist" ("id_artist")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_survey"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_survey" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_survey" (
  "crew_calification" INT NOT NULL,
  "food_calification" INT NOT NULL,
  "flight_calification" INT NOT NULL,
  "comments" VARCHAR(255) NULL,
  "ticket_id_ticket" INT NOT NULL,
  PRIMARY KEY ("ticket_id_ticket"),
  CONSTRAINT "fk_flight_survey_ticket1"
    FOREIGN KEY ("ticket_id_ticket")
    REFERENCES "horizonte_gt"."ticket" ("id_ticket")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- STOP
-- -----------------------------------------------------
-- Table "horizonte_gt"."position_aboard"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."position_aboard" CASCADE;

CREATE TABLE  "horizonte_gt"."position_aboard" (
  "extra_commissions" DECIMAL NOT NULL,
  "id_position" INT NOT NULL,
  CONSTRAINT "fk_position_aboard_position1"
    FOREIGN KEY ("id_position")
    REFERENCES "horizonte_gt"."position" ("id_position")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."employee_pilot"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."employee_pilot" CASCADE;

CREATE TABLE  "horizonte_gt"."employee_pilot" (
  "employee_id_employee" INT NOT NULL,
  "start_date" DATE NOT NULL,
  PRIMARY KEY ("employee_id_employee"),
  CONSTRAINT "fk_employee_pilot_employee1"
    FOREIGN KEY ("employee_id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."attendance"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."attendance" CASCADE;

CREATE TABLE  "horizonte_gt"."attendance" (
  "id_attendance" SERIAL ,
  "arrival_time" TIME NOT NULL,
  "departure_time" TIME NOT NULL,
  "date" DATE NOT NULL,
  "id_employee" INT NOT NULL,
  PRIMARY KEY ("id_attendance"),
  CONSTRAINT "fk_assistance_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."schedule"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."schedule" CASCADE;

CREATE TABLE  "horizonte_gt"."schedule" (
  "day" VARCHAR(45) NOT NULL ,
  "arrival_time" TIME NOT NULL,
  "departure_time" TIME NOT NULL,
  "id_employee" INT NOT NULL,
  PRIMARY KEY ("day", "id_employee"),
  CONSTRAINT "fk_schedule_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."non_attendance"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."non_attendance" CASCADE;

CREATE TABLE  "horizonte_gt"."non_attendance" (
  "id_non_attendance" SERIAL ,
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "reason" VARCHAR(255) NOT NULL,
  "justification" VARCHAR(255) NOT NULL,
  "id_employee" INT NOT NULL,
  PRIMARY KEY ("id_non_attendance"),
  CONSTRAINT "fk_non_attendance_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."vacation_request"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."vacation_request" CASCADE;

CREATE TABLE  "horizonte_gt"."vacation_request" (
  "id_vacation_request" SERIAL ,
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "status" VARCHAR(45) NOT NULL,
  "id_employee" INT NOT NULL,
  PRIMARY KEY ("id_vacation_request"),
  CONSTRAINT "fk_vacation_request_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."flight_employee"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."flight_employee" CASCADE;

CREATE TABLE  "horizonte_gt"."flight_employee" (
  "id_employee" INT NOT NULL,
  "id_flight" INT NOT NULL,
  "extra_comissions_amount" DECIMAL NULL,
  PRIMARY KEY ("id_employee", "id_flight"),
  CONSTRAINT "fk_flight_employee_flight1"
    FOREIGN KEY ("id_flight")
    REFERENCES "horizonte_gt"."flight" ("id_flight")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_flight_employee_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."hours_worked"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."hours_worked" CASCADE;

CREATE TABLE  "horizonte_gt"."hours_worked" (
  "id_hours_worked" SERIAL ,
  "date" DATE NOT NULL,
  "amount_hours" DECIMAL NOT NULL,
  "id_employee" INT NOT NULL,
  "amount_salary" INT NOT NULL,
  "is_paid" BOOLEAN NOT NULL,
  PRIMARY KEY ("id_hours_worked"),
  CONSTRAINT "fk_hours_worked_employee1"
    FOREIGN KEY ("id_employee")
    REFERENCES "horizonte_gt"."employee" ("id_employee")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizonte_gt"."payment_log"
-- -----------------------------------------------------
DROP TABLE IF EXISTS "horizonte_gt"."payment_log" CASCADE;

CREATE TABLE  "horizonte_gt"."payment_log" (
  "id_payment_log" SERIAL ,
  "payment_amount" DECIMAL NOT NULL,
  "date" DATE NOT NULL,
  "id_hours_worked" INT NOT NULL,
  PRIMARY KEY ("id_payment_log"),
  CONSTRAINT "fk_payment_log_hours_worked1"
    FOREIGN KEY ("id_hours_worked")
    REFERENCES "horizonte_gt"."hours_worked" ("id_hours_worked")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
	
-- :D



