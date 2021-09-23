cd .. ;
CUDA_VISIBLE_DEVICES=0 python distance_prior_main.py   \
 /home/syhou/MAN/translation/data-bin/wmt14_en_de_joined_dict \
 --source-lang en --target-lang de \
 --valid-subset valid \
 --arch transformer_wmt_en_de_big \
 --share-decoder-input-output-embed \
 --optimizer nag \
 --lr 0.5 \
 --dropout 0.2 \
 --clip-norm 0.1 \
 --max-tokens 4000 \
 --lr-scheduler fixed \
 --force-anneal 50 \
 --max-epoch 150 \
 --save-interval 5 \
 --task-name wmt14en2de \
 --generate-distance \
 --save-dir /home/syhou/distance-transformer/experimental/checkpoint/wmt14en2de/raw_translation/