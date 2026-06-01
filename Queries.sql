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


(

    'SR-0000000001',

    'SR-0000000002',

    'SR-0000000003',

    'SR-0000000004',

    'SR-0000000005',

    'SR-0000000006',

    'SR-0000001181',

    'SR-0000000011',

    'SR-0000000012',

    'SR-0000000013',

    'SR-0000000014',

    'SR-0000000015',

    'SR-0000000016',

    'SR-0000000017',

    'SR-0000000018',

    'SR-0000000019',

    'SR-0000000020',

    'SR-0000000021',

    'SR-0000000022',

    'SR-0000000023',

    'SR-0000000349',

    'SR-0000000024',

    'SR-0000000025',

    'SR-0000000026',

    'SR-0000000027',

    'SR-0000000028',

    'SR-0000004662',

    'SR-0000000030',

    'SR-0000000031',

    'SR-0000000032',

    'SR-0000000033',

    'SR-0000007144',

    'SR-0000004663',

    'SR-0000000041',

    'SR-0000000042',

    'SR-0000004664',

    'SR-0000000046',

    'SR-0000000048',

    'SR-0000000049',

    'SR-0000000050',

    'SR-0000004665',

    'SR-0000000052',

    'SR-0000000053',

    'SR-0000000054',

    'SR-0000000055',

    'SR-0000000056',

    'SR-0000000057',

    'SR-0000000058',

    'SR-0000000059',

    'SR-0000000060',

    'SR-0000000061',

    'SR-0000000062',

    'SR-0000000063',

    'SR-0000000064',

    'SR-0000000065',

    'SR-0000000066',

    'SR-0000000067',

    'SR-0000000352',

    'SR-0000000069',

    'SR-0000001183'

  )
 
