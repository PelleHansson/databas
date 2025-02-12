PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Theater;

CREATE TABLE Theater (
    theater_name TEXT PRIMARY KEY,
    capacity INT NOT NULL
);

DROP TABLE IF EXISTS Movie;

CREATE TABLE Movie (
    imdb_key TEXT PRIMARY KEY, 
    title TEXT NOT NULL,
    production_year INT NOT NULL,
    run_time DOUBLE NOT NULL
);
INSERT INTO Movie ("12391237", "Titanic","1996", "180" )

DROP TABLE IF EXISTS Performance;

CREATE TABLE Performance (
    imdb_key TEXT ,
    theater_name TEXT ,
  
    start_time TEXT NOT NULL,
    PRIMARY KEY (imdb_key, theater_name)
    FOREIGN KEY (imdb_key) REFERENCES Movie(imdb_key),
    FOREIGN KEY (theaterID) REFERENCES Theater(theaterID)
);

DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    user_name TEXT PRIMARY KEY,
    full_name TEXT NOT NULL,
    password TEXT NOT NULL 
);
DROP TABLE IF EXISTS Ticket;

CREATE TABLE Ticket (
    ticketID INT PRIMARY KEY, 
    performanceID TEXT NOT NULL,
    FOREIGN KEY (performanceID) REFERENCES Performance(performanceID)
);


