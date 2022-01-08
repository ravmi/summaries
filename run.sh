#/bin/bash
source venv/bin/activate;
python run_summarization_flax.py \
        --output_dir ./t5_from_scratch \
        --model_type t5 \
        --tokenizer_name t5-small \
        --train_file ~/subgoal_search_datasets/filtered_train.json \
        --validation_file ~/subgoal_search_datasets/filtered_val.json \
        --test_file ~/subgoal_search_datasets/filtered_test.json \
        --text_column source \
        --summary_column target \
        --do_train --do_eval --do_predict --predict_with_generate \
        --num_train_epochs 20 \
        --learning_rate 5e-4 --warmup_steps_percentage 0.1 \
        --per_device_train_batch_size 32 \
        --per_device_eval_batch_size 32 \
        --overwrite_output_dir \
        --max_source_length 512 --max_target_length 512 \
        --overwrite_cache &
