CREATE TABLE PEOPLE(
    ID              NUMBER(10) NOT NULL PRIMARY KEY,
    NAME            VARCHAR(100) NOT NULL,
    SSN             VARCHAR(10) NOT NULL,
    BIRTHDATE       DATE,
    IDADE           INT,
    GENDER          VARCHAR(1),
    
    ADDRESS01       VARCHAR(150),
    ADDRESS02       VARCHAR(150),
    DISTRICT        VARCHAR(50),
    CITY            VARCHAR(50),
    STATE           VARCHAR(2),
    ZIPCODE         VARCHAR(8),
    
    PHONE           VARCHAR(11),
    EMAIL           VARCHAR2(80),
    
    SCORE           FLOAT,
	FIRSTPURCHASE   NUMBER(1)
);