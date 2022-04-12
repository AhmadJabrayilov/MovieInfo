CREATE DATABASE MovieInfo
USE MovieInfo


CREATE TABLE Directors(
Id int primary key identity,
[Name] nvarchar(255) NOT NULL,
Surname nvarchar(255) NOT NULL
)

Drop TABLE Movie
CREATE TABLE Movie(
Id int primary key identity ,
[Name]nvarchar(255) NOT NULL,
Duration int NOT NULL ,
IMDB float,
DirectorsId int FOREIGN KEY REFERENCES Directors (Id)
)

CREATE TABLE Genre(
Id int primary key identity ,
[Name] nvarchar(255) NOT NULL
)

CREATE TABLE MovieGenre(
Id int primary key identity ,
GenreId int FOREIGN KEY REFERENCES Genre(Id),
MovieId int FOREIGN KEY REFERENCES Movie (Id)
)

CREATE TABLE Actors(
Id int primary key identity ,
[Name] nvarchar(255) NOT NULL,
Surname nvarchar(255) NOT NULL
)

CREATE TABLE MovieActors(
Id int primary key identity ,
MovieId int FOREIGN KEY REFERENCES Movie (Id),
ActorsId int FOREIGN KEY REFERENCES Actors (Id),
)