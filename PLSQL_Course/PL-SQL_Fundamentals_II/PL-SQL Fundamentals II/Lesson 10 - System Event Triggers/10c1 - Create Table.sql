
--Create the messages table
CREATE TABLE messages (
	MessageText VARCHAR2(100),
	DateEntered DATE DEFAULT SYSDATE);