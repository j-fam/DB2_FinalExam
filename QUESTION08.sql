SELECT
	campus,
	year,
	sum(revenue)
FROM
	campus_summary
GROUP BY
	rollup(campus, year)
;

SELECT
	nvl(campus, 'All campuses'),
	nvl(year, 'Both Years'),
	sum(revenue)
FROM
	campus_summary
GROUP BY
	rollup(year, campus)
;


SELECT
	campus,
	year,
	sum(revenue),
	sum(num_of_students)
FROM
	campus_summary
GROUP BY
	CUBE(campus, year)
;


SELECT
	campus,
	month,
	year,
	sum(revenue)
FROM
	campus_summary
GROUP BY
	grouping sets(campus, month, year)
;

SELECT
	campus,
	month,
	year,
	sum(revenue)
FROM
	campus_summary
GROUP BY
	cube(campus, month, year)
HAVING
	grouping_id (campus, month, year) = 3 or grouping_id (campus, month, year) >= 5
;

