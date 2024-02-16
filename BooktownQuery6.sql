SELECT
    B.Title AS BookTitle,
    E.Publication_Date AS PublicationDate,
    A.Author_ID AS AuthorID,
    A.First_Name AS AuthorFirstName,
    A.Last_Name AS AuthorLastName
FROM
    Editions AS E
JOIN
    Books AS B ON E.Book_ID = B.Book_ID
JOIN
    Authors AS A ON B.Author_ID = A.Author_ID
WHERE
    B.Author_ID IN (
        SELECT DISTINCT B.Author_ID
        FROM Editions AS E1
        JOIN Books AS B1 ON E1.Book_ID = B1.Book_ID
        WHERE E1.Publication_Date BETWEEN '2003-01-01' AND '2008-12-31'
    )
ORDER BY
    A.Author_ID ASC,
    B.Title ASC,
    E.Publication_Date DESC;