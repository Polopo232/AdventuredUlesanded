Select Id, Name, Gender From TableA Except
Select Id, Name, Gender From TableB

Select Id, Name, Gender From TableA
Where Id NOT IN (Select Id from TableB)