accelerate launch train.py \
    --model_type bert \
    --pretrained_model_name_or_path bert-base-chinese \
    --method tplinker_plus \
    --logging_steps 200 \
    --num_train_epochs 20 \
    --learning_rate 3e-5 \
    --num_warmup_steps_or_radios 0.1 \
    --gradient_accumulation_steps 1 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 8 \
    --seed 42 \
    --save_steps 10804 \
    --output_dir ./outputs \
    --max_length 512 \
    --topk 1 \
    --num_workers 6 \
    --model_cache_dir /mnt/f/hf/models

python evaluate.py