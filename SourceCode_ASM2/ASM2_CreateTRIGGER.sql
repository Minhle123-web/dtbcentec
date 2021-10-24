alter TRIGGER trg_Article on ARTICLE instead of insert AS
BEGIN
	if (exists(select * from inserted full join AUTHOR on inserted.AuthorID = AUTHOR.AuthorID where AUTHOR.AuthorID is null))
	begin
		print('AuthorID does not exist')
	end
END

insert into ARTICLE 
values ('AC016', 'abcde', 'abc', 'abc', 'abc', 'QL01', 'TP01', 1)
