
CREATE TABLE TAB_PADRAO
(
	ID INT IDENTITY(1,1) NOT NULL,
	DESCRITOR NVARCHAR(20) NULL,
	ENDERECO NVARCHAR(200) NULL,
	CIDADE NVARCHAR(50) DEFAULT 'CIDADE N�O DEFINIDA',
	DATA_CRIACAO DATE DEFAULT GETDATE()
);

INSERT INTO TAB_PADRAO (DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO) VALUES ('CLIENTE X', 'RUA PROJETADA A', 'S�O PAULO', '2018-04-30');
INSERT INTO TAB_PADRAO (DESCRITOR) VALUES ('CLIENTE Z');

SELECT * FROM TAB_PADRAO;

-- PARA RETIRAR OU COLOCAR OP��O DEFAULT EM CAMPOS SE USA A PALAVRA DEFAULT
