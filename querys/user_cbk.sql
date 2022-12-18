SELECT has_cbk, user_id, COUNT(user_id) AS count_user
FROM Cloudwalk.transactional_sample
WHERE has_cbk = "TRUE"
GROUP BY user_id
HAVING COUNT(user_id) >= 1
ORDER BY count_user DESC;