--1
select*from USERS
--2
select ManagerID, ManagerName, AmountAuthor from MANAGER
order by AmountAuthor DESC
--3
select*from AUTHOR
where AuthorName like 'QUANG%'

select*from USERS
where UserName > 'H'
--4
select MANAGER.ManagerID, ArticleName, PostDate from MANAGER inner join ARTICLE
on MANAGER.ManagerID = ARTICLE.ManagerID
where MONTH(PostDate) = 07 