CREATE TABLE Movees
(
	movees_id serial, --индентификатор фильма
	movie_title text NOT NULL, --название фильма
	director text NOT NULL, --режисер фильма

	PRIMARY KEY (movees_id)
);
CREATE TABLE Sessions
(
	sessions_id serial, --индентификатор сеанса
	nall_number int NOT NULL, --номер зала
	time_session time NOT NULL, --время сеанса
	movees_id int NOT NULL, --внешний ключ

	PRIMARY KEY (sessions_id),
	FOREIGN KEY (movees_id)
			REFERENCES Movees (movees_id)
);
CREATE TABLE Tickets
(
	tickets_id serial, --индентификатор билета
	name_guest text NOT NULL, --имена посетителей
	paid bool, --оплата
	reserve bool, --резерв
	sessions_id int NOT NULL, --внешний ключ

	PRIMARY KEY (tickets_id),
	FOREIGN KEY (sessions_id)
			REFERENCES Sessions (sessions_id)
);
