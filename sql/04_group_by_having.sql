-- Business Question:
-- How many candidates are available in each province?

SELECT
    province,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY province;

-- Business Question:
-- Which province has the largest talent pool?

SELECT
    province,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY province
ORDER BY total_candidates DESC;

-- Business Question:
-- What is the distribution of Fresh Graduate candidates?

SELECT
    fresh_graduate_status,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY fresh_graduate_status;

-- Business Question:
-- Which platform contributes the most candidates?

SELECT
    platform_source,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY platform_source
ORDER BY total_candidates DESC;

-- Business Question:
-- What are the main goals of candidates joining the talent pool?

SELECT
    candidate_goals,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY candidate_goals
ORDER BY total_candidates DESC;

SELECT
    province,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY province
HAVING COUNT(*) > 20;

SELECT
    province,
    COUNT(*) AS total_fresh_graduate
FROM candidates
WHERE fresh_graduate_status = 'Ya'
GROUP BY province
ORDER BY total_fresh_graduate DESC;

SELECT
    platform_source,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY platform_source
HAVING COUNT(*) > 20
ORDER BY total_candidates DESC;

SELECT
    candidate_goals,
    COUNT(*) AS total_candidates
FROM candidates
GROUP BY candidate_goals
HAVING COUNT(*) > 30;

-- Business Question:
-- Which provinces have more than 10 Fresh Graduate candidates?

SELECT
    province,
    COUNT(*) AS total_fresh_graduate
FROM candidates
WHERE fresh_graduate_status = 'Ya'
GROUP BY province
HAVING COUNT(*) > 10
ORDER BY total_fresh_graduate DESC;