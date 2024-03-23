create table SERVICETICKET (
	SERVICE_ID INTEGER primary key,
	PART VARCHAR(150),
	SERVICE_DESC VARCHAR(150),
	MECHANIC_ID INTEGER,
	VEHICLE_ID INTEGER,
	CUSTOMER_ID INTEGER,
	foreign key(VEHICLE_ID) references VEHICLE(VEHICLE_ID)
	);
	
create table VEHICLE(
	VEHICLE_ID INTEGER primary key,
	MAKE VARCHAR(150),
	MODEL VARCHAR(150),
	YEAR_ INTEGER,
	VIN VARCHAR(150)
	);
	
create table SALESPERSON(
	SALESPERSON_ID INTEGER primary key,
	FIRST_NAME VARCHAR(150),
	LAST_NAME VARCHAR(150)
	);
	
create table CUSTOMER(
	CUSTOMER_ID INTEGER primary key,
	VEHICLE_ID INTEGER,
	FIRST_NAME VARCHAR(150),
	LAST_NAME VARCHAR(150),
	PHONE_NUM VARCHAR(150),
	foreign key(VEHICLE_ID) references VEHICLE(VEHICLE_ID)
	);
	
create table INVOICE(
	INVOICE_NUM INTEGER primary key,
	CUSTOMER_ID INTEGER,
	VEHICLE_ID INTEGER,
	SALESPERSON_ID INTEGER,
	PRICE numeric(10,2),
	TAX NUMERIC(9,2),
	foreign key (CUSTOMER_ID) references CUSTOMER(CUSTOMER_ID),
	foreign key (VEHICLE_ID) references VEHICLE(VEHICLE_ID),
	foreign key (SALESPERSON_ID) references SALESPERSON(SALESPERSON_ID)
	);


select * from INVOICE;
select * from SERVICETICKET;
select * from CUSTOMER;
select * from SALESPERSON;
select * from VEHICLE;

insert into CUSTOMER (CUSTOMER_ID, VEHICLE_ID, FIRST_NAME, LAST_NAME, PHONE_NUM)
values (67, 453, 'Kim',	'Toshi', '(675) 877-0987');

insert into CUSTOMER (CUSTOMER_ID, VEHICLE_ID, FIRST_NAME, LAST_NAME, PHONE_NUM)
values (34,	23788,	'Tony',	'Strickland',	'(372) 513-0956');

insert into CUSTOMER (CUSTOMER_ID, VEHICLE_ID, FIRST_NAME, LAST_NAME, PHONE_NUM)
values (98,	65874,	'Lindsay',	'Graham',	'(498) 789-4092');

insert into SERVICETICKET(SERVICE_ID, PART, SERVICE_DESC, MECHANIC_ID, VEHICLE_ID, CUSTOMER_ID)
VALUES(9, 'Transmission Fluid',	'Transmission Flush', 64, 453, 67);

insert into SERVICETICKET(SERVICE_ID, PART, SERVICE_DESC, MECHANIC_ID, VEHICLE_ID, CUSTOMER_ID)
VALUES(53,	'Valvoline 5w-30',	'Oil Change', 12, 23788, 34);

insert into SERVICETICKET(SERVICE_ID, PART, SERVICE_DESC, MECHANIC_ID, VEHICLE_ID, CUSTOMER_ID)
VALUES(675,	'Ball Joint Tie Rod', 'Replace Ball Joints', 12, 65874, 98);

insert into VEHICLE(VEHICLE_ID, MAKE, MODEL, YEAR_, VIN)
VALUES(453,	'Ford', 'F-150', 2013, 'JH4DB1640LS003578');

insert into VEHICLE(VEHICLE_ID, MAKE, MODEL, YEAR_, VIN)
VALUES(23788, 'Subaru',	'Impreza', 2018, '2FMDA5146TBC22506');

insert into VEHICLE(VEHICLE_ID, MAKE, MODEL, YEAR_, VIN)
VALUES(65874, 'Toyota',	'Camry', 2024, 'JH4KA2540HC029679');

insert into SALESPERSON(SALESPERSON_ID, FIRST_NAME, LAST_NAME)
VALUES(87, 'Jim', 'Jeffries');

insert into SALESPERSON(SALESPERSON_ID, FIRST_NAME, LAST_NAME)
VALUES(12, 'Stacy', 'Wright');

insert into SALESPERSON(SALESPERSON_ID, FIRST_NAME, LAST_NAME)
VALUES(65, 'Jill', 'Faith');

insert into INVOICE(INVOICE_NUM, CUSTOMER_ID, SALESPERSON_ID, VEHICLE_ID, PRICE, TAX)
VALUES(134, 67, 87, 453, 78543.90, 3476.87);

insert into INVOICE(INVOICE_NUM, CUSTOMER_ID, SALESPERSON_ID, VEHICLE_ID, PRICE, TAX)
VALUES(845, 34, 12, 23788, 34923.76, 1287.54);

insert into INVOICE(INVOICE_NUM, CUSTOMER_ID, SALESPERSON_ID, VEHICLE_ID, PRICE, TAX)
VALUES(56, 98, 65, 65874, 12564.65, 543.98);


	