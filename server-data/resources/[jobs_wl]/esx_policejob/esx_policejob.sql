USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police', 'Policia'),
	('offpolice', 'Fuera De Servicio')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('offpolice',0,'auxiliar','Auxiliar',20,'{}','{}'),
	('offpolice',1,'cadete','Cadete',40,'{}','{}'),
	('offpolice',2,'sargento','Sargento',60,'{}','{}'),
	('offpolice',3,'teniente','Teniente',85,'{}','{}'),
	('offpolice',4,'capitan','Capitan',100,'{}','{}'),
	('offpolice',5,'director','Director De Inteligencia',85,'{}','{}'),
	('offpolice',6,'coronel','Coronel',85,'{}','{}'),
	('offpolice',7,'boss','General',85,'{}','{}')
	('police',0,'auxiliar','Auxiliar',20,'{}','{}'),
	('police',1,'cadete','Cadete',40,'{}','{}'),
	('police',2,'sargento','Sargento',60,'{}','{}'),
	('police',3,'teniente','Teniente',85,'{}','{}'),
	('police',4,'capitan','Capitan',100,'{}','{}'),
	('police',5,'director','Director De Inteligencia',85,'{}','{}'),
	('police',6,'coronel','Coronel',85,'{}','{}'),
	('police',7,'boss','General',85,'{}','{}')
;
