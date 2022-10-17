-- inserção de dados e queries
-- drop database ecommerce;
use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address

insert into Clients (Fname, Minit, Lname, CPF, Address)
	values('Maria','M','Silva',123456788, 'rua silva de prata 29, Carangola - Cidade das flores');
    
insert into product (Pname, classification_kids, category, avaliação, size) values
		('Fone de ouvido',false,'Eletrônico','4', null);
        
select * from clients;
select * from product;

-- delete from orders where idOrderClient in (1,2,3,4);

select * from orders;

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
	(1, default, 'compra via aplicativo', null, 1);

select * from orders;

-- idPOproduct, idPOorder, poQuantity, poStatus

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
	(1,1,2,null);
    
-- storageLocation, quantity
insert into productStorage (storageLocation, quantity) values
	('Rio de Janeiro', 1000);

-- idLproduct, idLstorage, location
insert into storageLocation (idLproduct, idLstorage, location) values
	(1,6,'RJ');
    
select * from storageLocation;
    
-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values
	('Almeida e filhos', 123456789123476, '21985474');
    
select * from supplier;

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
	('Tech eletronics', null, 123456789456221, null, 'Rio de Janeiro', 219946287);

select * from seller;

-- idPseller, idPproduct, prodQuantity

insert into productSeller (idPseller, idProduct, prodQuantity) values 
	(1,6,80),
    (2,7,10);
    
-- queries
    
select * from productSeller;

select count(*) from clients;

select * from clients c, orders o where c.idClient = idOrderClient;
-- ou
select * from clients , orders o where idClient = idOrderClient;
-- ou
select Fname, Lname, idOrder, orderStatus from clients, orders o where idClient = idOrderClient;
-- ou
select Fname, Lname, idOrder, orderStatus from clients c, orders o where c.idClient = idOrderClient;
-- ou
select concat(Fname, ' ', Lname) as Client, idOrder as Request, orderStatus as Status from clients c, orders o where c.idClient = idOrderClient;
-- ou
select count(*) from clients c, orders o
	where c.idClient = idOrderClient;

select * from productOrder;
-- Recuperar quantos pedidos foram realizados 
select c.idClient, Fname, count(*) as Number_of_orders from clients c 
	inner join orders o ON idClient = o.idOrderClient
	inner join productOrder p on p.idPOorder = o.idOrder
group by idClient;


