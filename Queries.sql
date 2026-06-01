SELECT qr.id, qr.option_sequence, qr.response_type_fkid
FROM msil_supervisor.campaign_question cq
JOIN msil_supervisor.question_response  qr ON qr.question_fkid = cq.id
WHERE cq.question_id = :questionId;

SELECT qr.id AS question_response_id, rltm.language_code_fk, rltm.text
FROM msil_supervisor.campaign_question cq
JOIN msil_supervisor.question_response          qr   ON qr.question_fkid          = cq.id
LEFT JOIN msil_supervisor.response_language_text_map rltm ON rltm.question_response_fkid = qr.id
WHERE cq.question_id = :questionId
ORDER BY qr.option_sequence, rltm.language_code_fk;
