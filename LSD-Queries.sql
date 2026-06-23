INSERT INTO msil_dms.am_users (
    password,
    user_name,
    geo_cd,
    user_id,
    workarea_cd,
    user_deleted,
    user_type,
    first_name,
    last_name,
    user_code,
    designation_cd,
    deleted_date,
    user_lock_id,
    created_date,
    modified_date,
    modified_by,
    created_by,
    user_logged,
    first_time_change_password,
    mul_cd,
    vpn,
    emp_cd,
    transaction_required,
    dms_logged_in,
    menu_access,
    user_channel,
    last_login_date,
    dealer_map_cd,
    admin_access,
    machine_key,
    reference_number,
    approval_status,
    approved_by,
    validation_url,
    machine_key_new,
    approval_comment,
    validation_url_new,
    license_date
)
VALUES (
    NULL,                              -- password
    NULL,                              -- user_name
    NULL,                              -- geo_cd
    'concentrix_nveerla',              -- user_id (KEEP)
    NULL,                              -- workarea_cd
    'N',                              -- user_deleted
    NULL,                              -- user_type
    NULL,                              -- first_name
    NULL,                              -- last_name
    NULL,                              -- user_code
    'CMP',                             -- designation_cd (KEEP)
    NULL,                              -- deleted_date
    NULL,                              -- user_lock_id
    GETDATE(),                         -- created_date (DYNAMIC - Redshift function)
    GETDATE(),                         -- modified_date (DYNAMIC - Redshift function)
    NULL,                              -- modified_by
    NULL,                              -- created_by
    NULL,                              -- user_logged
    NULL,                              -- first_time_change_password
    NULL,                              -- mul_cd
    NULL,                              -- vpn
    NULL,                              -- emp_cd
    NULL,                              -- transaction_required
    NULL,                              -- dms_logged_in
    NULL,                              -- menu_access
    NULL,                              -- user_channel
    NULL,                              -- last_login_date
    NULL,                              -- dealer_map_cd
    NULL,                              -- admin_access
    NULL,                              -- machine_key
    NULL,                              -- reference_number
    NULL,                              -- approval_status
    NULL,                              -- approved_by
    NULL,                              -- validation_url
    NULL,                              -- machine_key_new
    NULL,                              -- approval_comment
    NULL,                              -- validation_url_new
    NULL                               -- license_date
);
