select AR_US.ArticleID, ArticleName, COUNT(UserID) as 'So nguoi doc' from AR_US inner join ARTICLE
on AR_US.ArticleID = ARTICLE.ArticleID
group by AR_US.ArticleID, ArticleName having COUNT(UserID) > 1

select Place, COUNT(AuthorID) as 'Luong tac gia' from AUTHOR
group by Place having COUNT(AuthorID) > 1 order by COUNT(AuthorID) DESC