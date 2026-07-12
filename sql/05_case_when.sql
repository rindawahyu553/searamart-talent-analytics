SELECT
    candidate_id,
    fresh_graduate_status,
    CASE
        WHEN fresh_graduate_status = 'Ya' THEN 'Fresh Graduate'
        ELSE 'Experienced'
    END AS candidate_type
FROM candidates;

SELECT
    candidate_goals,
    CASE
        WHEN candidate_goals = 'Cari Kerja' THEN 'Recruitment'
        ELSE 'Development'
    END AS goal_category
FROM candidates;

SELECT
    candidate_id,
    excel_skill +
    sql_skill +
    python_skill +
    power_bi_skill +
    looker_studio_skill +
    database_skill +
    tableau_skill AS total_skill
FROM candidates;

SELECT
    candidate_id,

    excel_skill +
    sql_skill +
    python_skill +
    power_bi_skill +
    looker_studio_skill +
    database_skill +
    tableau_skill AS total_skill,

    CASE
        WHEN (
            excel_skill +
            sql_skill +
            python_skill +
            power_bi_skill +
            looker_studio_skill +
            database_skill +
            tableau_skill
        ) <= 2
        THEN 'Beginner'

        WHEN (
            excel_skill +
            sql_skill +
            python_skill +
            power_bi_skill +
            looker_studio_skill +
            database_skill +
            tableau_skill
        ) <= 5
        THEN 'Intermediate'

        ELSE 'Advanced'

    END AS skill_level

FROM candidates;

SELECT
    CASE
        WHEN (
            excel_skill +
            sql_skill +
            python_skill +
            power_bi_skill +
            looker_studio_skill +
            database_skill +
            tableau_skill
        ) <= 2
        THEN 'Beginner'

        WHEN (
            excel_skill +
            sql_skill +
            python_skill +
            power_bi_skill +
            looker_studio_skill +
            database_skill +
            tableau_skill
        ) <= 5
        THEN 'Intermediate'

        ELSE 'Advanced'

    END AS skill_level,

    COUNT(*) AS total_candidates

FROM candidates

GROUP BY skill_level

ORDER BY total_candidates DESC;

SELECT
    candidate_id,

    CASE
        WHEN sql_skill = 1
         AND python_skill = 1
         AND power_bi_skill = 1
        THEN 'High Potential'

        ELSE 'Regular Candidate'

    END AS recommendation

FROM candidates;

SELECT
    candidate_id,

    CASE
        WHEN sql_skill = 1
        THEN 'Has SQL Skill'

        ELSE 'No SQL Skill'

    END AS sql_status

FROM candidates;

SELECT
    candidate_id,

    CASE
        WHEN python_skill = 1
        THEN 'Has Python Skill'

        ELSE 'No Python Skill'

    END AS python_status

FROM candidates;

SELECT
    candidate_goals,

    CASE
        WHEN candidate_goals = 'Cari Kerja'
        THEN 'Hiring'

        ELSE 'Learning'

    END AS category

FROM candidates;

SELECT

    province,

    COUNT(*) AS total_candidates,

    CASE

        WHEN COUNT(*) >= 100 THEN 'Very High'

        WHEN COUNT(*) >= 50 THEN 'High'

        WHEN COUNT(*) >= 20 THEN 'Medium'

        ELSE 'Low'

    END AS talent_pool_category

FROM candidates

GROUP BY province

ORDER BY total_candidates DESC;

