SELECT *
FROM candidates
WHERE city = 'Surabaya';

SELECT *
FROM candidates
WHERE city <> 'Surabaya';

SELECT *
FROM candidates
WHERE city = 'Surabaya'
AND fresh_graduate_status = 'Ya';

SELECT *
FROM candidates
WHERE city = 'Surabaya'
OR city = 'Bandung';

SELECT *
FROM candidates
WHERE city IN ('Surabaya', 'Bandung', 'Jakarta');

SELECT *
FROM candidates
WHERE city NOT IN ('Surabaya', 'Bandung', 'Jakarta');

SELECT *
FROM candidates
WHERE city LIKE 'S%';

SELECT *
FROM candidates
WHERE candidate_id BETWEEN 1 AND 20;

SELECT *
FROM candidates
WHERE NOT fresh_graduate_status = 'Ya';

SELECT *
FROM candidates
WHERE city = 'Surabaya'
ORDER BY candidate_id;