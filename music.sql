CREATE TABLE "artist"(
    "id" BIGINT NOT NULL,
    "name" BIGINT NOT NULL,
    "song" BIGINT NOT NULL,
    "column_4" BIGINT NOT NULL
);
ALTER TABLE
    "artist" ADD PRIMARY KEY("id");
CREATE TABLE "producers"(
    "id" BIGINT NOT NULL,
    "name" TEXT NOT NULL,
    "produced_album" BIGINT NOT NULL
);
ALTER TABLE
    "producers" ADD PRIMARY KEY("id");
CREATE TABLE "song"(
    "id" BIGINT NOT NULL,
    "title" TEXT NOT NULL,
    "duration_sec" BIGINT NOT NULL,
    "release_date" DATE NOT NULL,
    "album_id" BIGINT NOT NULL
);
ALTER TABLE
    "song" ADD PRIMARY KEY("id");
CREATE TABLE "album"(
    "id" BIGINT NOT NULL,
    "name" BIGINT NOT NULL,
    "column_3" BIGINT NOT NULL
);
ALTER TABLE
    "album" ADD PRIMARY KEY("id");
ALTER TABLE
    "artist" ADD CONSTRAINT "artist_song_foreign" FOREIGN KEY("song") REFERENCES "song"("id");
ALTER TABLE
    "song" ADD CONSTRAINT "song_album_id_foreign" FOREIGN KEY("album_id") REFERENCES "album"("id");
ALTER TABLE
    "producers" ADD CONSTRAINT "producers_produced_album_foreign" FOREIGN KEY("produced_album") REFERENCES "album"("id");
