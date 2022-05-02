#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER pswd WITH PASSWORD 'pswd';
	CREATE DATABASE password_manager;
	GRANT ALL PRIVILEGES ON DATABASE password_manager TO pswd;
EOSQL