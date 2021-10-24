Declare @t nvarchar(10)
	Select @t = dbo.fc_tongArticle(1)
	Print ('Tong bai da phe duyet:' + ' '+ @t)