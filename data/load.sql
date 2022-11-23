CREATE or REPLACE TABLE test_source_events AS SELECT * FROM read_csv_auto('data/test_source_events.csv');
CREATE or REPLACE TABLE train_source_events AS SELECT * FROM read_csv_auto('data/train_source_events.csv');
CREATE or REPLACE TABLE train_target_events AS SELECT * FROM read_csv_auto('data/train_target_events.csv');

