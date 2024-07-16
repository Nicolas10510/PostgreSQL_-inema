-- Написать запросы для заполнения таблиц данными
INSERT INTO Movees (movees_id, movie_title, director)
    VALUES (1, 'Titanic', 'James Cameron'),
            (2, 'The Green Mile', 'Frank Darabont'),
            (3, 'Die Hard', 'John Mc Tiernan');

INSERT INTO Sessions (sessions_id, nall_number, time_session, movees_id)
    VALUES (1, 1, '10:00:00', 3),
            (2, 1, '15:00:00', 3),
            (3, 1, '20:00:00', 3),
            (4, 2, '11:00:00', 1),
            (5, 2, '16:00:00', 1),
            (6, 2, '21:00:00', 1),
            (7, 3, '12:00:00', 2),
            (8, 3, '17:00:00', 2),
            (9, 3, '22:00:00', 2);

INSERT INTO Tickets (tickets_id, name_guest, paid, reserve, sessions_id)
    VALUES (1, 'Ivan', TRUE, FALSE, 1),
            (2, 'Nikolay', TRUE, FALSE, 4),
            (3, 'Petr', FALSE, TRUE, 7);

