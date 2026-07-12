SELECT
    candidate_id,
    province,
    ROW_NUMBER() OVER (
        ORDER BY candidate_id
    ) AS row_num
FROM candidates;

SELECT
    candidate_id,
    province,
	ROW_NUMBER() OVER(
        PARTITION BY province
        ORDER BY candidate_id
    ) AS row_num
FROM candidates;

SELECT
    province,
    COUNT(*) AS total_candidate,
    RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS ranking
FROM candidates
GROUP BY province;

SELECT
    province,
    COUNT(*) AS total_candidate,
    DENSE_RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS ranking
FROM candidates
GROUP BY province;

SELECT
    platform_source,
    COUNT(*) AS total_candidate,
    RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS platform_rank
FROM candidates
GROUP BY platform_source;

SELECT
    candidate_goals,
    COUNT(*) AS total_candidate,
    RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS goal_rank
FROM candidates
GROUP BY candidate_goals;

SELECT
    province,
    COUNT(*) AS total_candidate,
    NTILE(4) OVER(
        ORDER BY COUNT(*) DESC
    ) AS quartile
FROM candidates
GROUP BY province;

SELECT
    province,
    COUNT(*) AS total_candidate,
    CUME_DIST() OVER(
        ORDER BY COUNT(*) DESC
    ) AS cumulative_distribution
FROM candidates
GROUP BY province;

SELECT
    province,
    COUNT(*) AS total_candidate,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS ranking
FROM candidates
GROUP BY province;

SELECT *
FROM (
    SELECT
        province,
        COUNT(*) AS total_candidate,
        DENSE_RANK() OVER (
            ORDER BY COUNT(*) DESC
        ) AS ranking
    FROM candidates
    GROUP BY province
) AS ranked_province
WHERE ranking <= 5;