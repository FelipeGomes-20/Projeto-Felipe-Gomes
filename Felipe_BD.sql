CREATE DATABASE Quantum;
USE Quantum;

-- TABELA 1
CREATE TABLE Usuarios(
idUsuario INT NOT NULL AUTO_INCREMENT,
Empresa VARCHAR(40),
área_atuação VARCHAR (50),
CNPJ CHAR (18),
email VARCHAR (30),
senha VARCHAR (20),
dataInicio DATE,
PRIMARY KEY (idUsuario)
);

INSERT INTO Usuarios (Empresa , área_atuação, CNPJ , email , senha , dataInicio)
             VALUES ('Mega Bus' , 'Transporte Público', '73.782.571/0001-07' ,'serhiy3574@uorak.com' ,'AUITYnTy' ,'2022-03-17'),
                    ('Beta Bus' , 'Transporte Público', '82.212.753/0001-25' ,'bernabe9202@uorak.com' ,'DDXnuhTS' ,'2021-11-23'),
                    ('TOP' , 'Transporte Público', '29.089.083/0001-19' ,'carines8365@uorak.com' ,'1Nn6N7KN' ,'2021-03-25'),
                    ('EMTU' , 'Transporte Público', '80.606.927/0001-09' ,'tremedal5977@uorak.com' ,'kUSxnZ1n' ,'2020-05-10');
SELECT * FROM Usuarios;
                    
                    
-- TABELA 2
CREATE TABLE Sensores(
idSensor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
numero_serie char(5),
ônibus VARCHAR (30),
Empresa VARCHAR(50),
localidade VARCHAR(50)
);

INSERT INTO Sensores (numero_serie , ônibus , Empresa , localidade)
                VALUES ('02315' , 'I05', 'Mega Bus' , 'Catraca'),
                        ('16151' , 'T12', 'Mega Bus' , 'Catraca'),
                        ('81651' , 'U26', 'Mega Bus' , 'Porta'),
                        ('15655' , 'T1110', 'Beta Bus' , 'Catraca'),
                        ('02210' , 'I05', 'Mega Bus' , 'Porta'),
                        ('02211' , 'T12', 'Mega Bus' , 'Porta'),
                        ('02314' , 'U26', 'Mega Bus' , 'Catraca'),
                        ('03210' , 'T1110', 'Beta Bus' , 'Porta');
SELECT * FROM Sensores;

                        
-- TABELA 3
CREATE TABLE Registros(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
numero_serie char(5),
data_hrs DATETIME,
qtdPessoas INT
);

INSERT INTO Registros(numero_serie , data_hrs , qtdPessoas)
			VALUES ('02210' , '2022-02-25 12:50:30' ,'2'),
					('02211' , '2022-02-25 12:50:30' ,'21'),
                    ('02314' , '2022-02-25 12:50:30' ,'10'),
                    ('03210' , '2022-02-25 12:50:30' ,'25'),
                    ('02315' , '2022-02-25 12:50:30' ,'10'),
                    ('16151' , '2022-02-25 12:50:30' ,'2'),
                    ('81651' , '2022-02-25 12:50:30' ,'5'),
                    ('15655' , '2022-02-25 12:50:30' ,'18');
SELECT * FROM Registros;