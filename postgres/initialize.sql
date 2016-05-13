REATE ROLE redash_reader WITH PASSWORD 'redash_reader' NOCREATEROLE NOCREATEDB NOSUPERUSER LOGIN;
GRANT SELECT(id, name, type) ON data_sources TO redash_reader;
GRANT SELECT(id, name) ON users TO redash_reader;
GRANT SELECT ON events, queries, dashboards, widgets, visualizations, query_results TO redash_reader;
