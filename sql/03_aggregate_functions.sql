SELECT COUNT(*) AS total_candidates
FROM candidates;

SELECT SUM(excel_skill) AS total_excel_skill
FROM candidates;

SELECT SUM(sql_skill) AS total_sql_skill
FROM candidates;

SELECT SUM(python_skill) AS total_python_skill
FROM candidates;

SELECT AVG(excel_skill) AS avg_excel_skill
FROM candidates;

SELECT AVG(sql_skill) AS avg_sql_skill
FROM candidates;

SELECT MIN(candidate_id) AS first_candidate
FROM candidates;

SELECT MAX(candidate_id) AS last_candidate
FROM candidates;

SELECT COUNT(*) AS total_fresh_graduate
FROM candidates
WHERE fresh_graduate_status = 'Ya';

SELECT SUM(sql_skill) AS total_sql_skill
FROM candidates
WHERE city = 'Surabaya';
