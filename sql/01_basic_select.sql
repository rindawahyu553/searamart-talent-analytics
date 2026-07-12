USE retail_ecommerce_talent_pool;

SELECT *
FROM candidates;

SELECT
    candidate_id,
    city,
    province
FROM candidates;

SELECT *
FROM candidates
LIMIT 10;

SELECT DISTINCT city
FROM candidates;

SELECT
    city AS kota,
    province AS provinsi
FROM candidates;

SELECT *
FROM candidates
ORDER BY city ASC;

SELECT *
FROM candidates
ORDER BY city DESC;

SELECT
    candidate_id,
    city,
    province
FROM candidates
ORDER BY province ASC;

SELECT *
FROM candidates
LIMIT 20;

SELECT
    candidate_id,
    city,
    province
FROM candidates
ORDER BY city ASC
LIMIT 15;