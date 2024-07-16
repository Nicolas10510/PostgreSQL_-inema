-- Взять запросы для заполнения таблиц данными и объединить их в транзакции.
-- Важно, что исходные запросы должны остаться в каталоге соответствующего блока,
-- а здесь будет их модифицированная версия.

BEGIN;
INSERT INTO Movees (movees_id, movie_title, director)
    VALUES (4, 'Stock and Two Smoking Barrels', 'Guy Ritchie'),
            (5, 'Kings Speech', 'Tom Hooper'),
            (6, 'Home Alone', 'Chris Columbus');
INSERT INTO Sessions (sessions_id, nall_number, time_session, movees_id)
    VALUES (10, 2, '10:00:00', 3),
            (11, 2, '15:00:00', 3),
            (12, 2, '20:00:00', 3),
            (13, 3, '11:00:00', 1),
            (14, 3, '16:00:00', 1),
            (15, 3, '21:00:00', 1),
            (16, 1, '12:00:00', 2),
            (17, 1, '17:00:00', 2),
            (18, 1, '22:00:00', 2);
INSERT INTO Tickets (tickets_id, name_guest, paid, reserve, sessions_id)
    VALUES (7, 'Ivans', TRUE, FALSE, 10),
            (8, 'Nikolays', TRUE, FALSE, 14),
            (9, 'Petrs', FALSE, TRUE, 17);
COMMIT;