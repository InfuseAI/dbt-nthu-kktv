
CREATE or REPLACE TABLE light_test_source_labels AS SELECT * FROM read_csv_auto('data/light_test_source_labels.csv');
CREATE or REPLACE TABLE light_train_source_labels AS SELECT * FROM read_csv_auto('data/light_train_source_labels.csv');
CREATE or REPLACE TABLE light_train_target_labels AS SELECT * FROM read_csv_auto('data/light_train_target_labels.csv');
CREATE or REPLACE TABLE test_source_events AS SELECT * FROM read_csv_auto('data/test_source_events.csv');
CREATE or REPLACE TABLE train_source_events AS SELECT * FROM read_csv_auto('data/train_source_events.csv');
CREATE or REPLACE TABLE train_target_events AS SELECT * FROM read_csv_auto('data/train_target_events.csv');
CREATE or REPLACE TABLE sample AS SELECT * FROM read_csv_auto('data/sample.csv');
