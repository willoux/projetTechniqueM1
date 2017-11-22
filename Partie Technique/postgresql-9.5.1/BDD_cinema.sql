DROP TABLE IF EXISTS film, realisateur, realise, studio, genre, a_pour_genre, identifiants CASCADE;

CREATE TABLE studio(
	id_studio integer PRIMARY KEY,
	nom_studio varchar(200) UNIQUE,
	date_creation date
);

CREATE TABLE genre(
	id_genre int PRIMARY KEY,
	nom_genre varchar(25) UNIQUE
);

CREATE TABLE realisateur(
	id_real integer PRIMARY KEY,
	nom varchar(100),
	prenom varchar(100)
);

CREATE TABLE film(
	id_film integer PRIMARY KEY,
	titre varchar(200),
	date_sortie date,
	id_studio int REFERENCES studio(id_studio)
);

CREATE TABLE realise(
	id_film integer REFERENCES film(id_film),
	id_real integer REFERENCES realisateur(id_real),
	PRIMARY KEY (id_film, id_real)
);

CREATE TABLE a_pour_genre(
	id_film integer REFERENCES film(id_film),
	id_genre integer REFERENCES genre(id_genre),
	ordre_importance int,
	PRIMARY KEY (id_film, id_genre)
);

CREATE TABLE identifiants(
	id_movie INT  NOT NULL ,
	id_imdb  INT ,
	id_tmdb  INT
);

