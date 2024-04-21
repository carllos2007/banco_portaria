create database database_order;

use database_order;


create table login (
	loginId		int AUTO_INCREMENT,
	user		varchar(12),
	password	varchar(15),
    cpfNumber	varchar(11),
    name		varchar(64),
     PRIMARY KEY (loginId)
);

insert into login (user, password, cpfNumber, name) 
values ("admin", "teste123", "12345678910", "João da Silva");

create table order_status (
	statusId	int	AUTO_INCREMENT,
    status		varchar(12),
	PRIMARY KEY (statusId)
);

insert into order_status (status) values("Entregue");
insert into order_status (status) values("Aguardando");


create table orders (
	orderId			int AUTO_INCREMENT,
    houseNumber 	varchar(12), -- numero da casa
    entryOrderDate	date, -- entrada
    takeOrderDate 	date, -- retirada
    statusOrder		int, -- status fk order_status
    senderOrder		varchar(32), -- remetente
    takeName		varchar(64), -- nome retirada
	takeCpfNumber	varchar(11), -- cpf de quem retirou
    PRIMARY KEY (orderId),
    FOREIGN KEY (statusOrder) REFERENCES order_status(statusId)
);


insert into orders( houseNumber, entryOrderDate	, takeOrderDate, statusOrder, senderOrder, takeName, takeCpfNumber
 ) values ("123A", "2024-01-01", null, 2, "Teste Remetente", null, null );
 
 insert into orders( houseNumber, entryOrderDate	, takeOrderDate, statusOrder, senderOrder, takeName, takeCpfNumber
 ) values ("456B", "2024-01-01", null, 2, "Libre Super", null, null );
 
 insert into orders( houseNumber, entryOrderDate	, takeOrderDate, statusOrder, senderOrder, takeName, takeCpfNumber
 ) values ("123A", "2024-01-06", "2024-01-06", 1, "Teste Remetente", "Nome Legal", "12345678910" );
 
 insert into orders( houseNumber, entryOrderDate	, takeOrderDate, statusOrder, senderOrder, takeName, takeCpfNumber
 ) values ("001A", "2024-01-01", "2025-01-09", 2, "Churras 666", "João Ssauro", "12345678910" );
 
 insert into orders( houseNumber, entryOrderDate	, takeOrderDate, statusOrder, senderOrder, takeName, takeCpfNumber
 ) values ("001B", "2024-01-01", "2025-01-06", 2, "AbacateMania", "El Manito", "12345678910" );