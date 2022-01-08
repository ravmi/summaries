#/bin/bash
mkdir -p ~/subgoal_search_datasets
gsutil cp gs://subgoal-search-huggingface/filtered_train.json ~/subgoal_search_datasets
gsutil cp gs://subgoal-search-huggingface/filtered_val.json ~/subgoal_search_datasets
gsutil cp gs://subgoal-search-huggingface/filtered_test.json ~/subgoal_search_datasets
