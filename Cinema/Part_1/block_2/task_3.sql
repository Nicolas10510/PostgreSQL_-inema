-- Написать запросы для удаления данных в таблице

DELETE
    FROM Sessions
    WHERE sessions_id = 1;

-- удалили сеанс

DELETE
    FROM Sessions
    WHERE nall_number = 1;

-- удалили все сеансы, которые должны были проходить в 1 зале, закрыт на ремонт