USE app_db;

CREATE VIEW sample_view(
    user_id,
    first_name,
    last_name,
    group_name
) AS
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    g.group_name
FROM
    users u
    INNER JOIN
        groups g
    ON  u.group_id = g.group_id
;
