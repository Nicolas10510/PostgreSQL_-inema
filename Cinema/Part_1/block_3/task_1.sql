-- Написать запросы с выборками, объединяющими данные из связанных таблиц

-- INNER
SELECT *FROM Sessions
    JOIN Movees ON Sessions.movees_id=Movees.movees_id;
-- по внешнему ключу movees_id покажет информацию о сеансах и фильмах

-- CROSS
SELECT *
    FROM Sessions
    CROSS JOIN Movees;
-- объединяет две таблицы в одну по внешнему ключу. Декартовое произведение

-- OUTER
SELECT * FROM Sessions
RIGHT JOIN Movees
ON Sessions.movees_id=Movees.movees_id;

SELECT * FROM Sessions
LEFT JOIN Movees
ON Sessions.movees_id=Movees.movees_id;

SELECT * FROM Sessions
FULL JOIN Movees
ON Sessions.movees_id=Movees.movees_id;


SELECT name_guest, nall_number
    FROM Tickets
    JOIN Sessions ON Tickets.sessions_id = Sessions.sessions_id;
--покажет список всех гостей и кто в какой зал идет 

