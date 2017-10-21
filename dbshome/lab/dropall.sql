CREATE OR REPLACE FUNCTION public.dropall()
    RETURNS void
    LANGUAGE plpgsql
AS $function$
    DECLARE
    r RECORD;
BEGIN
    FOR r IN ( SELECT tablename
               FROM   pg_tables
               WHERE  schemaname = current_schema() )
    LOOP
        EXECUTE 'TRUNCATE ' || quote_ident(r.tablename) || ' CASCADE';
        EXECUTE 'DROP TABLE ' || quote_ident(r.tablename) || ' CASCADE';
    END LOOP;
END $function$
