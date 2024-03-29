CREATE VIEW StudentPairs AS
SELECT DISTINCT
    CASE WHEN e1.SID < e2.SID THEN e1.SID ELSE e2.SID END AS SID1,
    CASE WHEN e1.SID < e2.SID THEN e2.SID ELSE e1.SID END AS SID2
FROM
    Enrollments e1
JOIN
    Enrollments e2 ON e1.CID = e2.CID AND e1.SID < e2.SID
LEFT JOIN
    Members m1 ON e1.SID = m1.SID
LEFT JOIN
    Members m2 ON e2.SID = m2.SID AND m1.PID = m2.PID
WHERE
    m2.PID IS NULL
    AND (m1.PID IS NULL OR m1.SID <> e2.SID);
