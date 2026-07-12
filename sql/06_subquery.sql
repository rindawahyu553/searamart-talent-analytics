SELECT *
FROM candidates
WHERE candidate_id = (
    SELECT MAX(candidate_id)
    FROM candidates
);

SELECT *
FROM candidates
WHERE candidate_id = (
    SELECT MIN(candidate_id)
    FROM candidates
);

SELECT *
FROM candidates
WHERE sql_skill > (
    SELECT AVG(sql_skill)
    FROM candidates
);

SELECT
    province,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY province
HAVING COUNT(*) = (

    SELECT MAX(total_candidate)

    FROM (

        SELECT
            province,
            COUNT(*) AS total_candidate
        FROM candidates
        GROUP BY province

    ) AS province_summary

);

SELECT
    platform_source,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY platform_source
HAVING COUNT(*) = (

    SELECT MAX(total_candidate)

    FROM (

        SELECT
            platform_source,
            COUNT(*) AS total_candidate
        FROM candidates
        GROUP BY platform_source

    ) AS platform_summary

);

SELECT
    candidate_goals,
    COUNT(*) AS total_candidate
FROM candidates
GROUP BY candidate_goals
HAVING COUNT(*) = (

    SELECT MAX(total_candidate)

    FROM (

        SELECT
            candidate_goals,
            COUNT(*) AS total_candidate
        FROM candidates
        GROUP BY candidate_goals

    ) AS goal_summary

);

SELECT *
FROM candidates
WHERE candidate_id IN (

    SELECT candidate_id
    FROM candidates
    WHERE sql_skill = 1

);

SELECT *
FROM candidates
WHERE candidate_id IN (

    SELECT candidate_id
    FROM candidates
    WHERE sql_skill = 1
      AND python_skill = 1

);

SELECT *
FROM candidates
WHERE province = (

    SELECT province

    FROM candidates

    GROUP BY province

    ORDER BY COUNT(*) DESC

    LIMIT 1

);

SELECT *

FROM candidates

WHERE (

    excel_skill +
    sql_skill +
    python_skill +
    power_bi_skill +
    looker_studio_skill +
    database_skill +
    tableau_skill

) = (

    SELECT MAX(total_skill)

    FROM (

        SELECT

            (
                excel_skill +
                sql_skill +
                python_skill +
                power_bi_skill +
                looker_studio_skill +
                database_skill +
                tableau_skill

            ) AS total_skill

        FROM candidates

    ) AS skill_summary

);