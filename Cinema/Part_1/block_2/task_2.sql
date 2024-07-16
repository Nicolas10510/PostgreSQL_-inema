-- Написать запросы для обновления данных в таблице

UPDATE Tickets
    SET sessions_id= 3
    WHERE tickets_id = 1;

-- теперь Иван идет на другой сеанс

UPDATE Sessions
    SET time_session= '09:00:00'
    WHERE sessions_id = 1;

-- потому что время сеанса перенесли на 9 утра вместо 10.

UPDATE Sessions
    SET movees_id= 2
    WHERE sessions_id = 1;

-- да ещё и кинчик поменяли с Титаника на Зеленую Милю

UPDATE Tickets
    SET sessions_id= 9
    WHERE tickets_id = 1;

-- еще раз пернесли Ивана на другой сеанс.так как зал закрывается на ремонт