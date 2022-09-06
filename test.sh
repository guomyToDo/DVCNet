#!/bin/bash

#--name='Hrnet_aspp_relu_clsw1_lr5e5_bz20_gbn_reslt_stage4_tsne' \
#--net_name='hrnet_aspp_relu_gbn_reslt' \


python3 test.py --dataset_name='JSTL_large_4' \
                --gpu_ids='2,3' \
                --optimizer='adam' \
                --start_eval_epoch=200 \
                --lr=5e-5 \
                --cls_w=1 \
                --base_mae='60,10,100,100' \
                --name='Hrnet_aspp_relu_clsw1_models' \
                --net_name='DVCNet' \
                --weight_with_target=True \
                --final_conf=0.5 \
                --batch_size=2 \
                --nThreads=2 \
                --max_epoch=400 \
                --eval_per_epoch=1

