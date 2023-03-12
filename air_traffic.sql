CREATE TABLE "passenger" (
    "passenger_id" int   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "seat" text   NOT NULL,
    "flight_id" int   NOT NULL,
    CONSTRAINT "pk_passenger" PRIMARY KEY (
        "passenger_id"
     )
);

CREATE TABLE "flight" (
    "flight_id" int   NOT NULL,
    "departure" date   NOT NULL,
    "arrival" date   NOT NULL,
    "airline" text   NOT NULL,
    "from_city" text   NOT NULL,
    "from_country" text   NOT NULL,
    "to_city" text   NOT NULL,
    "to_country" text   NOT NULL,
    CONSTRAINT "pk_flight" PRIMARY KEY (
        "flight_id"
     )
);

ALTER TABLE "passenger" ADD CONSTRAINT "fk_passenger_flight_id" FOREIGN KEY("flight_id")
REFERENCES "flight" ("flight_id");

