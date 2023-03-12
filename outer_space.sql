CREATE TABLE "planets"(
    "id" BIGINT NOT NULL,
    "plenet_name" TEXT NOT NULL,
    "galaxy_id" BIGINT NOT NULL,
    "orbits_around_id" BIGINT NOT NULL,
    "orbital_period_in_years" BIGINT NOT NULL
);
ALTER TABLE
    "planets" ADD PRIMARY KEY("id");
CREATE TABLE "center"(
    "id" BIGINT NOT NULL,
    "center_name" TEXT NOT NULL
);
ALTER TABLE
    "center" ADD PRIMARY KEY("id");
CREATE TABLE "galaxy"(
    "id" BIGINT NOT NULL,
    "name" TEXT NOT NULL
);
ALTER TABLE
    "galaxy" ADD PRIMARY KEY("id");
CREATE TABLE "moons"(
    "id" BIGINT NOT NULL,
    "name" TEXT NOT NULL,
    "of_planet" BIGINT NOT NULL
);
ALTER TABLE
    "moons" ADD PRIMARY KEY("id");
ALTER TABLE
    "planets" ADD CONSTRAINT "planets_galaxy_id_foreign" FOREIGN KEY("galaxy_id") REFERENCES "galaxy"("id");
ALTER TABLE
    "planets" ADD CONSTRAINT "planets_orbits_around_id_foreign" FOREIGN KEY("orbits_around_id") REFERENCES "center"("id");
ALTER TABLE
    "moons" ADD CONSTRAINT "moons_of_planet_foreign" FOREIGN KEY("of_planet") REFERENCES "planets"("id");
