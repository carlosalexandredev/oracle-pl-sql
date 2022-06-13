
CREATE OR REPLACE TRIGGER SchemaError
  AFTER SERVERERROR
  ON SCHEMA

DECLARE

  --Declare variables
  TriggeringSQLTable    ora_name_list_t;
  TriggeringSQLText     VARCHAR2(2000);
  ElementCount          BINARY_INTEGER;

BEGIN

  --Set the ElementCount variable using the ora_sql_txt attribute
  ElementCount := ora_sql_txt (TriggeringSQLTable);

  --Loop through each element
  FOR i IN 1..ElementCount LOOP
    TriggeringSQLText := TriggeringSQLText || TriggeringSQLTable(i);
  END LOOP;   

  --Insert the detail into the Messages table
  INSERT INTO Messages (MessageText)
    VALUES (TriggeringSQLText);
  INSERT INTO Messages (MessageText)
    VALUES (ora_server_error(1));
  INSERT INTO Messages (MessageText)
    VALUES (ora_server_error_msg(1));
    
END;
/