 Theater 
    theater_name TEXT PRIMARY KEY,

Movie 
    imdb_key TEXT PRIMARY KEY, 

is kinda natural as its parents are

  

CREATE TABLE Customer 
    user_name TEXT PRIMARY KEY,
  

CREATE TABLE Ticket (
    ticketID INT PRIMARY KEY, 
    performanceID TEXT NOT NULL,
    FOREIGN KEY (performanceID) REFERENCES Performance(performanceID)
);


Is there a risk that any of the natural keys will ever change?
some of them are iffy 
liek username many programs have changable usernames 

weak
i hope to make the preformance weak as it can be compleatly dependent on parents but then the tickets need to connect to both movies and theater instead of just preformances

invented keys
tickets will have a invented key as ticket id 
and also if we use a preformance with oreformmance id and not as weak entity
