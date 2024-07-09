CREATE TABLE Tickets
(
	tickets_id serial, --индентификатор билета
	name_guest text NOT NULL, --имена посетителей
	paid bool, --оплата
	reserve bool, --резерв
	id_session int, --внешний ключ

	PRIMARY KEY (tickets_id)
);
CREATE TABLE Sessions
(
	sessions_id serial, --индентификатор сеанса
	nall_number int, --номер зала
	time_session time, --время сеанса
	id_movee int, --внешний ключ

	PRIMARY KEY (sessions_id)
);
CREATE TABLE Movees
(
	movees_id serial, --индентификатор фильма
	movie_title text NOT NULL, --название фильма
	director text NOT NULL, --режисер фильма

	PRIMARY KEY (movees_id)
);