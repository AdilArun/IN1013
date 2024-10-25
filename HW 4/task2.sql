USE pet_database;

INSERT INTO petPet VALUES
    ("Fluffy", "Harold", "cat", "F", "1993-02-04", NULL),
    ("Claws", "Gwen", "cat", "M", "1994-03-17", NULL),
    ("Buffy", "Harold", "dog", "F", "1989-05-13", NULL),
    ("Fang", "Benny", "dog", "M", "1990-08-27", NULL),
    ("Bowser", "Diane", "dog", "M", "1979-08-31", "1995-07-29"),
    ("Chirpy", "Gwen", "bird", "F", "1998-09-11", NULL),
    ("Whistler", "Gwen", "bird", NULL, "1997-12-09", NULL),
    ("Slim", "Benny", "snake", "M", "1996-04-29", NULL),
    ('Puffball','Diane','hamster','F','1999-03-30',NULL);

INSERT INTO petEvent VALUES
    ("1","Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ("2","Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ("3","Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ("4","Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ("5","Slim", "1997-08-03", "vet", "broken rib"),
    ("6","Slim", "1997-10-04", "vet", "broken tooth"),
    ("7","Bowser", "1991-10-12", "kennel", NULL),
    ("8","Fang", "1991-10-12", "kennel", NULL),
    ("9","Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ("10","Claws", "1998-03-17","birthday", "Gave him a new flea collar"),
    ("11","Whistler", "1998-12-09", "birthday", "First birthday");

INSERT INTO petEvent VALUES
    ('12','Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet VALUES
    ('Hammy', 'Diane', 'hamster', 'M','2010-10-30',NULL);

INSERT INTO petEvent VALUES 
    ('13','Hammy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petEvent VALUES
    ('14','Fluffy','2024-10-25','litter','5 kittens, 3 female, 2 male');


UPDATE petEvent SET PetName="Claws" WHERE EventDate="1997-08-03";

UPDATE petPet SET Death="2020-09-01" WHERE PetName="Puffball";

DELETE FROM petEvent WHERE PetName="Buffy";
DELETE FROM petPet WHERE PetName="Buffy";

SELECT * FROM petPet;
SELECT * FROM petEvent;