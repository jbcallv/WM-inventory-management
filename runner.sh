#!/bin/bash

dropdb ims_small
createdb ims_small
psql ims_small < schema_DDL.sql
psql ims_small < manualInsert_small.sql
