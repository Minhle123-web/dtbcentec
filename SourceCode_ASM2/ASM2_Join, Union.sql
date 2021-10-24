--1
select ArticleName, Topic, Author, UserID, Comment
from AR_US inner join ARTICLE on AR_US.ArticleID = ARTICLE.ArticleID
--2
select ArticleID, Topic
from ARTICLE where AuthorID = 'TG01' union 
select ArticleID, Topic
from ARTICLE where AuthorID = 'TG02'
--3
select a.Topic, b.Topic, a.AuthorID 
from ARTICLE a, ARTICLE b where a.ArticleID <> b.ArticleID and a.AuthorID = b.AuthorID
order by a.AuthorID
--4
use ASM2
select MANAGER.ManagerID, AuthorID from MANAGER full outer join AUTHOR on MANAGER.ManagerID = AUTHOR.ManagerID