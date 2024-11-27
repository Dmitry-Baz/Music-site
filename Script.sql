CREATE TABLE IF NOT EXISTS Actors (
	ActorID SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Genres (
	GenresID SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Alboms (
	AlbomID SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	Release_date CHAR(4) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	TrackID SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	Duration TIME NOT NULL,
	Albom_id INTEGER NOT NULL REFERENCES Alboms(AlbomID)
);


CREATE TABLE IF NOT EXISTS Collection (
	CollectionID SERIAL PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	Release_date CHAR(4) NOT NULL
);



CREATE TABLE IF NOT EXISTS GenreConnections (
	GenreConnectID SERIAL PRIMARY KEY,
	GenresID INTEGER NOT NULL REFERENCES Genres(GenresID),
	ActorID INTEGER NOT NULL REFERENCES Actors(ActorID)
);

CREATE TABLE IF NOT EXISTS AlbomConnectors (
	AlbomConnectID SERIAL PRIMARY KEY,
	ActorID INTEGER NOT NULL REFERENCES Actors(ActorID),
	AlbomID INTEGER NOT NULL REFERENCES Alboms(AlbomID)
);

CREATE TABLE IF NOT EXISTS CollectConnections (
	Collect_conectID SERIAL PRIMARY KEY,
	CollectionID INTEGER NOT NULL REFERENCES Collection(CollectionID),
	TrackID INTEGER NOT NULL REFERENCES Tracks(TrackID)
);