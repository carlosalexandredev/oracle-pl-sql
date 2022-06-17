CREATE TABLE INVOICES(
    SSN             VARCHAR(10) NOT NULL,
	REGISTRATION 	VARCHAR(5) NOT NULL,
	DATE_SALES		DATE,
	ID				NUMBER(10),
	TAXES			FLOAT
);

INSERT INTO INVOICES (SSN,REGISTRATION,DATE_SALES,ID,TAXES) VALUES ('7771579779','233',TIMESTAMP '2022-08-11 00:00:00.000000',100,0.1);
INSERT INTO INVOICES (SSN,REGISTRATION,DATE_SALES,ID,TAXES) VALUES ('5840119709','235',TIMESTAMP '2022-05-16 00:00:00.000000',101,0.2);

SELECT * FROM INVOICES;