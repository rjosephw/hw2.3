SELECT DISTINCT s1.SID, s1.Name
FROM Students s1
JOIN Members m1 ON s1.SID = m1.SID
JOIN Members m2 ON m1.PID = m2.PID AND m1.SID <> m2.SID
JOIN Enrollments e2 ON m2.SID = e2.SID
JOIN Courses c2 ON e2.CID = c2.CID AND c2.C_Name IN ('EECS482', 'EECS483')
JOIN Members m3 ON m2.PID = m3.PID AND m1.SID = m3.SID
JOIN Enrollments e3 ON m3.SID = e3.SID
JOIN Courses c3 ON e3.CID = c3.CID AND c3.C_Name IN ('EECS484', 'EECS485')
JOIN Enrollments e4 ON s1.SID = e4.SID
JOIN Courses c4 ON e4.CID = c4.CID AND c4.C_Name = 'EECS280'
ORDER BY s1.Name DESC;
