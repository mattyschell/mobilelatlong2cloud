#!/usr/bin/env bash
(python ./test/run_test.py ./test/information_schema_schemata.sql ./test/schemata_expected) || exit 1
(python ./test/run_test.py ./test/information_schema_tables.sql ./test/tables_expected) || exit 1
(python ./test/run_test.py ./test/citylimits.sql ./test/citylimits_expected) || exit 1
(python ./test/run_test.py ./test/geo_districts.sql ./test/geo_districts_expected) || exit 1
(python ./test/run_test.py ./test/geo_districts_valid.sql ./test/geo_districts_valid_expected) || exit 1
