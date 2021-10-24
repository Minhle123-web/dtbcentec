--1
select MANAGER.ManagerID, ManagerName, AmountAuthor, AuthorID, AuthorName 
from MANAGER inner join AUTHOR on MANAGER.ManagerID = AUTHOR.ManagerID
where AmountAuthor in (select MAX(AmountAuthor) from MANAGER)
 
