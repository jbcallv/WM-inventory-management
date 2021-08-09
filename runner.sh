#!/bin/bash

dropdb ims
createdb ims
psql ims < schema_DDL.sql
psql ims < manualInsert_small.sql
