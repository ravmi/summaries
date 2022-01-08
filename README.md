## Table of contents
* [How to run](#how-to-run)
* [Possible issues](#possible-issues)
* [Own experiments](#own-experiments)

## How to run
```
$ screen
$ ./download_data.sh
$ virtualenv venv
$ . venv/bin/activate
$ pip install -r requirements.txt
$ ./run.sh
```

Logs will be updated here:
https://app.neptune.ai/rm360179/subgoal-search/
	
## Possible issues
1. You can ignore the following warning, it's misleading (TPUs probably do work)
```
INFO - absl - Unable to initialize backend 'tpu_driver': Not found: Unable to find driver in registry given worker: local://
```
2. If TPUs really don't work (it sometimes happens after keyboard interrupts), restart them via gcp website
3. After running multiple experiments your cache will get huge and you'll most likely get out of memory errors when running experiments. You can check size of your cache with:
```
du -sh ~/.cache/huggingface
```
It's best to clean it up before running anything:
```
du -sh ~/.cache/huggingface
cd ~/.cache/huggingface
rm -r *
```
	
## New experiments
This README is logged to Neptune.
If you want to describe your experiment without git commits, modify run.sh and explain your experiment below

-------

based on:
https://github.com/huggingface/transformers/tree/master/examples/flax/summarization

