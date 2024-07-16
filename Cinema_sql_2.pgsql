-- SELECT *FROM Sessions
--     JOIN Movees ON Sessions.movees_id=Movees.movees_id;

-- SELECT *
--     FROM Sessions
--     CROSS JOIN Movees;

-- SELECT * FROM Sessions
-- RIGHT JOIN Movees
-- ON Sessions.movees_id=Movees.movees_id;

-- SELECT * FROM Sessions
-- LEFT JOIN Movees
-- ON Sessions.movees_id=Movees.movees_id;

-- SELECT * FROM Sessions
-- FULL JOIN Movees
-- ON Sessions.movees_id=Movees.movees_id;

-- SELECT *FROM Movees;
-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;

-- INSERT INTO Tickets (tickets_id, name_guest, paid, reserve, sessions_id)
--     VALUES (4, 'Inna', TRUE, FALSE, 4),
--             (5, 'Natali', TRUE, FALSE, 4),
--             (6, 'Kristina', FALSE, TRUE, 4);

-- SELECT *FROM Tickets;

-- SELECT name_guest, nall_number
--     FROM Tickets
--     JOIN Sessions ON Tickets.sessions_id = Sessions.sessions_id;

-- DELETE
--     FROM Movees
--     WHERE movees_id = 4;
-- DELETE
--     FROM Movees
--     WHERE movees_id = 5;
-- DELETE
--     FROM Movees
--     WHERE movees_id = 6;

-- INSERT INTO Movees (movees_id, movie_title, director)
--     VALUES (4, 'Stock and Two Smoking Barrels', 'Guy Ritchie'),
--             (5, 'Kings Speech', 'Tom Hooper'),
--             (6, 'Home Alone', 'Chris Columbus');


-- BEGIN;
-- INSERT INTO Movees (movees_id, movie_title, director)
--     VALUES (4, 'Stock and Two Smoking Barrels', 'Guy Ritchie'),
--             (5, 'Kings Speech', 'Tom Hooper'),
--             (6, 'Home Alone', 'Chris Columbus');
-- INSERT INTO Sessions (sessions_id, nall_number, time_session, movees_id)
--     VALUES (10, 2, '10:00:00', 3),
--             (11, 2, '15:00:00', 3),
--             (12, 2, '20:00:00', 3),
--             (13, 3, '11:00:00', 1),
--             (14, 3, '16:00:00', 1),
--             (15, 3, '21:00:00', 1),
--             (16, 1, '12:00:00', 2),
--             (17, 1, '17:00:00', 2),
--             (18, 1, '22:00:00', 2);
-- INSERT INTO Tickets (tickets_id, name_guest, paid, reserve, sessions_id)
--     VALUES (7, 'Ivans', TRUE, FALSE, 10),
--             (8, 'Nikolays', TRUE, FALSE, 14),
--             (9, 'Petrs', FALSE, TRUE, 17);
-- COMMIT;

-- SELECT *FROM Movees;
-- SELECT *FROM Sessions;
-- SELECT *FROM Tickets;