
CREATE TABLE Author (
                        Id INTEGER PRIMARY KEY IDENTITY ,
                        Name VARCHAR(200) NOT NULL ,
                        DateOfBirth VARCHAR(30),
                        Bio VARCHAR (500),
                        ContactInfo VARCHAR (500)
);

CREATE TABLE Book (
                      Id INTEGER PRIMARY KEY IDENTITY ,
                      Title VARCHAR(255),
                      Name VARCHAR(200) NOT NULL,
                      ISBN10 VARCHAR(25),
                      ISBN13 VARCHAR(25),
                      DESCRIPTION VARCHAR(500)
);

CREATE TABLE Book_Author (
                             Id INTEGER PRIMARY KEY IDENTITY ,
                             BookId INTEGER NOT NULL ,
                             AuthorId INTEGER NOT NULL,
                             FOREIGN KEY (BookId) REFERENCES Book(Id),
                             FOREIGN KEY (AuthorId) REFERENCES Author(Id)
);

CREATE TABLE Publisher (
                           Id INTEGER PRIMARY KEY IDENTITY,
                           Name VARCHAR(200) NOT NULL ,
                           ContactInfo VARCHAR (500)
);

CREATE TABLE LoanItems (
                           Id INTEGER PRIMARY KEY IDENTITY,
                           BookId INTEGER NOT NULL,
                           CheckedOut BINARY,
                           FOREIGN KEY (BookId) REFERENCES Book(Id)
);


CREATE TABLE Member (
                        Id INTEGER PRIMARY KEY IDENTITY,
                        Name VARCHAR(200) NOT NULL,
                        DateOfBirth VARCHAR(30),
                        ContactInfo VARCHAR (500),
);

CREATE TABLE Member_LoanItems (
                                  Id INTEGER PRIMARY KEY IDENTITY,
                                  MemberId INTEGER NOT NULL ,
                                  LoanItemId INTEGER NOT NULL,
                                  DateCheckedOut VARCHAR(30) NOT NULL,
                                  DueDate VARCHAR(30) NOT NULL,
                                  DateReturned VARCHAR(30)
);
