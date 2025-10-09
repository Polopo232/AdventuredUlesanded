Select Id, Name, Gender From TableA Except
Select Id, Name, Gender From TableB

Select Id, Name, Gender From TableA
Where Id NOT IN (Select Id from TableB)

INSERT INTO TableA VALUES (1, 'Mark','Male')

Select Id, Name, Gender From TableA
Except
Select Id, Name From TableB

Select Id, Name, Gender From TableA
Where Id NOT IN (Select Id, Name from TableB)