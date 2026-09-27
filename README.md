
# PostgreSQL Advanced Lab

## Audit Logging, Category Trees, and Safe Migrations

This project demonstrates PostgreSQL audit logging, hierarchical data modeling, versioned database migrations using Flyway, and least-privilege database security.

## Project Files

- `migrations/V1__core_tables.sql` — Defines the students table.
- `migrations/V2__audit_log.sql` — Defines the audit table, function, and trigger.
- `migrations/V3__categories.sql` — Defines the hierarchical categories table.
- `audit_tests.sql` — Tests UPDATE and DELETE operations and retrieves audit records.
- `category_tree.sql` — Uses a recursive CTE to display hierarchical categories.
- `security.sql` — Defines database roles and assigns permissions.

## Completed Exercises

1. Created and tested an audit logging system.
2. Created a hierarchical category tree using a recursive CTE.
3. Installed Flyway and prepared three versioned migration files.
4. Baselined the existing database at version 3 and verified its migration history.
5. Created read and write roles and configured database permissions.

## Results

The audit trigger successfully recorded UPDATE and DELETE operations. The recursive query displayed the category hierarchy correctly.

Flyway successfully validated the migration history. Since the database objects had already been created manually, the three migration files were baselined rather than executed by Flyway.

The application user was created and its membership in the write role was verified.
