-- PostgreSQL Advanced Lab
-- Step 5: Least-Privilege Security

CREATE ROLE app_read;
CREATE ROLE app_write;

GRANT CONNECT ON DATABASE bootcamp
TO app_read, app_write;

GRANT USAGE ON SCHEMA public
TO app_read, app_write;

GRANT SELECT ON ALL TABLES IN SCHEMA public
TO app_read;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO app_write;

CREATE USER api LOGIN IN ROLE app_write;

-- Set the api password securely using:
-- \password api
