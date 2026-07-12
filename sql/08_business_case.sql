SELECT COUNT(*) AS total_candidates
FROM candidates;

SELECT
    fresh_graduate_status,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY fresh_graduate_status;

SELECT
    province,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY province
ORDER BY total_candidate DESC;

SELECT
    platform_source,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY platform_source
ORDER BY total_candidate DESC;

SELECT
    'Excel' AS skill,
    COUNT(*) AS total_candidates
FROM candidates
WHERE excel_skill = 1

UNION ALL

SELECT
    'SQL',
    COUNT(*)
FROM candidates
WHERE sql_skill = 1

UNION ALL

SELECT
    'Python',
    COUNT(*)
FROM candidates
WHERE python_skill = 1

UNION ALL

SELECT
    'Power BI',
    COUNT(*)
FROM candidates
WHERE power_bi_skill = 1

UNION ALL

SELECT
    'Looker Studio',
    COUNT(*)
FROM candidates
WHERE looker_studio_skill = 1

UNION ALL

SELECT
    'Database',
    COUNT(*)
FROM candidates
WHERE database_skill = 1

UNION ALL

SELECT
    'Tableau',
    COUNT(*)
FROM candidates
WHERE tableau_skill = 1

UNION ALL

SELECT
    'Other Skills',
    COUNT(*)
FROM candidates
WHERE other_skills IS NOT NULL
AND TRIM(other_skills) <> '';

SELECT *
FROM (

    SELECT
        'Excel' AS skill,
        COUNT(*) AS total_candidates
    FROM candidates
    WHERE excel_skill = 1

    UNION ALL

    SELECT
        'SQL',
        COUNT(*)
    FROM candidates
    WHERE sql_skill = 1

    UNION ALL

    SELECT
        'Python',
        COUNT(*)
    FROM candidates
    WHERE python_skill = 1

    UNION ALL

    SELECT
        'Power BI',
        COUNT(*)
    FROM candidates
    WHERE power_bi_skill = 1

    UNION ALL

    SELECT
        'Looker Studio',
        COUNT(*)
    FROM candidates
    WHERE looker_studio_skill = 1

    UNION ALL

    SELECT
        'Database',
        COUNT(*)
    FROM candidates
    WHERE database_skill = 1

    UNION ALL

    SELECT
        'Tableau',
        COUNT(*)
    FROM candidates
    WHERE tableau_skill = 1

) AS skill_summary

ORDER BY total_candidates DESC
LIMIT 5;



SELECT
    'Looking for Job' AS goal,
    COUNT(*) AS total_candidates
FROM candidates
WHERE for_job = 1

UNION ALL

SELECT
    'Upskilling',
    COUNT(*)
FROM candidates
WHERE upskills = 1

UNION ALL

SELECT
    'Networking',
    COUNT(*)
FROM candidates
WHERE networking = 1

UNION ALL

SELECT
    'Career Switch',
    COUNT(*)
FROM candidates
WHERE switch_career = 1;

SELECT COUNT(*) AS complete_foundation
FROM candidates
WHERE excel_skill = 1
AND sql_skill = 1
AND python_skill = 1;

SELECT COUNT(*) AS bi_stack
FROM candidates
WHERE sql_skill = 1
AND power_bi_skill = 1
AND tableau_skill = 1;

SELECT COUNT(*) AS complete_data_analyst
FROM candidates
WHERE excel_skill = 1
AND sql_skill = 1
AND python_skill = 1
AND power_bi_skill = 1;

