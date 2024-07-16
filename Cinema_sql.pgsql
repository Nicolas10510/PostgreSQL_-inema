-- CREATE TABLE Movees
-- (
-- 	movees_id INTEGER, --индентификатор фильма
-- 	movie_title text NOT NULL, --название фильма
-- 	director text NOT NULL, --режисер фильма

-- 	PRIMARY KEY (movees_id)
-- );

-- SELECT *FROM Movees;

-- CREATE TABLE Sessions
-- (
-- 	sessions_id serial, --индентификатор сеанса
-- 	nall_number int NOT NULL, --номер зала
-- 	time_session time NOT NULL, --время сеанса
-- 	movees_id int NOT NULL, --внешний ключ

-- 	PRIMARY KEY (sessions_id),
-- 	FOREIGN KEY (movees_id)
-- 			REFERENCES Movees (movees_id)
-- );

-- CREATE TABLE Tickets
-- (
-- 	tickets_id serial, --индентификатор билета
-- 	name_guest text NOT NULL, --имена посетителей
-- 	paid bool, --оплата
-- 	reserve bool, --резерв
-- 	sessions_id int NOT NULL, --внешний ключ

-- 	PRIMARY KEY (tickets_id),
-- 	FOREIGN KEY (sessions_id)
-- 			REFERENCES Sessions (sessions_id)
-- );

-- SELECT *FROM Movees;
-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;

-- INSERT INTO Movees (movees_id, movie_title, director)
--     VALUES (1, 'Titanic', 'James Cameron'),
--             (2, 'The Green Mile', 'Frank Darabont'),
--             (3, 'Die Hard', 'John Mc Tiernan');

-- SELECT *FROM Movees;

-- INSERT INTO Sessions (sessions_id, nall_number, time_session, movees_id)
--     VALUES (1, 1, '10:00:00', 3),
--             (2, 1, '15:00:00', 3),
--             (3, 1, '20:00:00', 3),
--             (4, 2, '11:00:00', 1),
--             (5, 2, '16:00:00', 1),
--             (6, 2, '21:00:00', 1),
--             (7, 3, '12:00:00', 2),
--             (8, 3, '17:00:00', 2),
--             (9, 3, '22:00:00', 2);

-- SELECT *FROM Sessions;

-- INSERT INTO Tickets (tickets_id, name_guest, paid, reserve, sessions_id)
--     VALUES (1, 'Ivan', TRUE, FALSE, 1),
--             (2, 'Nikolay', TRUE, FALSE, 4),
--             (3, 'Petr', FALSE, TRUE, 7);

-- SELECT *FROM Tickets;

-- UPDATE Tickets
--     SET sessions_id= 3
--     WHERE tickets_id = 1;

-- SELECT *FROM Tickets;

-- UPDATE Sessions
--     SET time_session= '09:00:00'
--     WHERE sessions_id = 1;

-- SELECT *FROM Sessions;

-- UPDATE Sessions
--     SET movees_id= 2
--     WHERE sessions_id = 1;

-- SELECT *FROM Sessions;

-- DELETE
--     FROM Sessions
--     WHERE sessions_id = 1;

-- SELECT *FROM Sessions;

-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;

-- UPDATE Tickets
--     SET sessions_id= 9
--     WHERE tickets_id = 1;

-- DELETE
--     FROM Sessions
--     WHERE nall_number = 1;

-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;

-- SELECT *FROM Movees;
-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;

-- SELECT * FROM Movees
--     ORDER BY director;

-- SELECT *FROM Sessions
--     WHERE movees_id = 2

-- SELECT nall_number, count(*) FROM Sessions
--     GROUP BY nall_number;