SELECT amount
FROM value_table
GROUP BY amount
ORDER BY COUNT(*) DESC
LIMIT 1;
