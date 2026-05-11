SELECT uuid.full_name
FROM person_uuid uuid

-- joining for gender
JOIN person_details details
    ON uuid.p_uuid = details.p_uuid

-- joining for blood type
JOIN person_physical physical
    ON uuid.p_uuid = physical.p_uuid

-- joining for last login
JOIN users
    ON uuid.p_uuid = users.p_uuid

-- joining for missing check
LEFT JOIN person_missing missing
    ON uuid.p_uuid = missing.p_uuid

WHERE
    details.opt_gender = 'F'
    AND missing.p_uuid IS NULL
    AND physical.opt_blood_type = 'A+'
    AND users.changed_timestamp <
    unix_timestamp(DATE_SUB(NOW(), INTERVAL 3 MONTH))*1000;