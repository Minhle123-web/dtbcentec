Create PROC sp_Article (@update int)
as
BEGIN
	Select * from ARTICLE where Approve = @update
END
exec sp_Article 0


