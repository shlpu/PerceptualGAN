CUDA_VISIBLE_DEVICES=0 \
python train.py \
--images_path data/celeba_hq/ \
--train_img_A_path data/lists_hq/all_train.txt \
--train_img_B_path data/lists_hq/all_train.txt \
--test_img_A_path data/lists_hq/all_test.txt \
--test_img_B_path data/lists_hq/all_test.txt \
--input_transform flip,scale \
--experiment_name celebahq_256p_pretrain \
--batch_size 16 \
--image_size 256 \
--model_type pix2pix \
--kernel_size 4 \
--mse_loss_weight 1. \
--mse_loss_type perceptual \
--gen_num_channels 32 \
--gen_max_channels 256 \
--gen_latent_size 32 \
--gen_num_res_blocks 7 \
--gen_norm_layer none \
--get_upsampling_layer conv_transpose \
--adv_loss_weight 0. \
--enc_type vgg19_pytorch \
--num_epoch 50 \
--epoch_len 1000