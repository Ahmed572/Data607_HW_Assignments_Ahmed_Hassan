create schema ahmed_hassan_607_assignments;

CREATE TABLE ahmed_hassan_607_assignments.Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);


CREATE TABLE ahmed_hassan_607_assignments.People (
    person_id INT PRIMARY KEY,
    gender CHAR(1),
    generation VARCHAR(50)
);

CREATE TABLE ahmed_hassan_607_assignments.Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    person_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),  -- Only allow ratings between 1 and 5
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);



INSERT INTO ahmed_hassan_607_assignments.People (person_id, gender, generation) VALUES
(1, 'M', 'millennial'),
(2, 'M', 'millennial'),
(3, 'M', 'millennial'),
(4, 'M', 'gen z'),
(5, 'F', 'gen z');

INSERT INTO ahmed_hassan_607_assignments.Movies (movie_id, title) VALUES
(1, 'Deadpool & Wolverine'),
(2, 'It Ends With Us'),
(3, 'Inside Out 2'),
(4, 'Fly Me to the Moon'),
(5, 'MaxxXine'),
(6, 'Twisters');


INSERT INTO ahmed_hassan_607_assignments.Ratings (rating_id, movie_id, person_id, rating) VALUES
(1, 1, 1, 5),
(2, 1, 2, 5),
(3, 1, 3, 5),
(4, 1, 4, 5),
(5, 1, 5, 3),
(6, 2, 1, 3),
(7, 2, 2, NULL),
(8, 2, 3, NULL),
(9, 2, 4, 4),
(10, 2, 5, 5),
(11, 3, 1, NULL),
(12, 3, 2, 2),
(13, 3, 3, NULL),
(14, 3, 4, NULL),
(15, 3, 5, NULL),
(16, 4, 1, NULL),
(17, 4, 2, NULL),
(18, 4, 3, 3),
(19, 4, 4, 2),
(20, 4, 5, NULL),
(21, 5, 1, NULL),
(22, 5, 2, NULL),
(23, 5, 3, 3),
(24, 5, 4, 3),
(25, 5, 5, NULL),
(26, 6, 1, NULL),
(27, 6, 2, 1),
(28, 6, 3, NULL),
(29, 6, 4, 1),
(30, 6, 5, NULL);
