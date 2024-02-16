
SELECT DISTINCT A.First_Name, A.Last_Name
FROM Authors AS A
WHERE A.Author_ID IN (
    SELECT B.Author_ID
    FROM Books AS B
    WHERE B.Subject_ID = (select s.Subject_id from subjects s where s.Subject = 'Children/YA'))
AND A.Author_ID IN (
    SELECT C.Author_ID
    FROM Books AS C
    WHERE C.Subject_ID = (select s.Subject_id from subjects s where s.Subject =  'Fiction'))
ORDER BY A.First_Name ASC, A.Last_Name ASC;