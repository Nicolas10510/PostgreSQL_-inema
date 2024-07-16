-- Написать запросы для выполнения выборок

-- показывает таблицы
SELECT *FROM Movees;
SELECT *FROM Sessions;
SELECT *FROM Tickets;

-- показывает таблицу с фильмами в алфавитном порядке режисеров
SELECT * FROM Movees
    ORDER BY director;

-- показывает всех кто идет на фильм 2 (Зеленая миля)
SELECT *FROM Sessions
    WHERE movees_id = 2

-- покажет сколько сеансов и в каких кинозалах 
SELECT nall_number, count(*) FROM Sessions
    GROUP BY nall_number;