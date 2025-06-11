# $1 = /home/jcrecio/repos/DiffuSeq_IsabelleProofGenerator/datasets/proofs

python -m torch.distributed.launch --nproc_per_node=4 --master_port=12233 --use_env scripts/run_train.py \
--diff_steps 2000 \
--lr 0.0001 \
--learning_steps 50000 \
--save_interval 10000 \
--seed 102 \
--noise_schedule sqrt \
--hidden_dim 128 \
--bsz 2048 \
--dataset qqp \
--data_dir $1 \
--vocab bert \
--seq_len 128 \
--schedule_sampler lossaware \
--notes test-qqp
