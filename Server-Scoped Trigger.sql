CREATE TRIGGER tr_DatabaseScopeTrigger
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
ROLLBACK
Print 'You cannot create, alter or drop a table in the current database'
END

CREATE TRIGGER tr_ServerScopeTrigger
ON ALL SERVER
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
ROLLBACK
Print 'You cannot create, alter or drop a table in any database on the server'
END

DISABLE TRIGGER tr_ServerScopeTrigger ON ALL SERVER

ENABLE TRIGGER tr_ServerScopeTrigger ON ALL SERVER

DROP TRIGGER tr_ServerScopeTrigger ON ALL SERVER