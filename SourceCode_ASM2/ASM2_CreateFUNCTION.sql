Create FUNCTION fc_tongArticle(@up int) returns int 
As
BEGIN
	RETURN(
	Select COUNT(*) FROM ARTICLE
	where Approve = @up
	)
END
	