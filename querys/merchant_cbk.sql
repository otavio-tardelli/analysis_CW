SELECT has_cbk, merchant_id, COUNT(merchant_id) AS count_merchant
FROM Cloudwalk.transactional_sample
WHERE has_cbk = "TRUE"
GROUP BY merchant_id
HAVING COUNT(merchant_id) >= 1
ORDER BY count_merchant DESC;