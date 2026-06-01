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


WITH input_questions(question_id) AS (

    VALUES

    ('SR-0000003475'),

    ('SR-0000003504'),

    ('SR-0000000283'),

    ('SR-0000000089'),

    ('SR-0000000090'),

    ('SR-0000007145'),

    ('SR-0000003476'),

    ('SR-0000003477'),

    ('SR-0000000082'),

    ('SR-0000003478'),

    ('SR-0000003479'),

    ('SR-0000003480'),

    ('SR-0000003481'),

    ('SR-0000003482'),

    ('SR-0000003483'),

    ('SR-0000003484'),

    ('SR-0000001255'),

    ('SR-0000003485'),

    ('SR-0000003486'),

    ('SR-0000000130'),

    ('SR-0000000322'),

    ('SR-0000003487'),

    ('SR-0000000330'),

    ('SR-0000001235'),

    ('SR-0000000335'),

    ('SR-0000001268'),

    ('SR-0000000132'),

    ('SR-0000003488'),

    ('SR-0000000137'),

    ('SR-0000001249'),

    ('SR-0000003489'),

    ('SR-0000003490'),

    ('SR-0000003491'),

    ('SR-0000003493'),

    ('SR-0000003494'),

    ('SR-0000003495'),

    ('SR-0000003496'),

    ('SR-0000001258'),

    ('SR-0000003497'),

    ('SR-0000003498'),

    ('SR-0000003499'),

    ('SR-0000003500'),

    ('SR-0000003501'),

    ('SR-0000003502'),

    ('SR-0000003503'),

    ('SR-0000000180'),

    ('SR-0000000181'),

    ('SR-0000001261'),

    ('SR-0000001254'),

    ('SR-0000001263'),

    ('SR-0000001264'),

    ('SR-0000001265'),

    ('SR-0000001236'),

    ('SR-0000001266'),

    ('SR-0000001225'),

    ('SR-0000000192'),

    ('SR-0000003508'),

    ('SR-0000001269'),

    ('SR-0000000195'),

    ('SR-0000000196'),

    ('SR-0000000197')

)

SELECT iq.question_id

FROM input_questions iq

LEFT JOIN campaign_question cq

       ON cq.question_id = iq.question_id

      AND cq.campaign_id = '<CAMPAIGN_ID>'

      AND cq.is_active = TRUE

WHERE cq.question_id IS NULL

ORDER BY iq.question_id;
 
