#!/bin/bash

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375  --output_path output_layered_gamma_75_375_10p
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.375,0.45,0.525,0.6,0.675,0.75  --output_path output_layered_gamma_375_75_10p
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.70,0.65,0.60,0.55,0.50  --output_path output_layered_gamma_75_50_5d
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.5,0.55,0.60,0.65,0.70,0.75  --output_path output_layered_gamma_50_75_5i


#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.725,0.70,0.675,0.65,0.625  --output_path output_layered_gamma_75_625_25d
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.75,0.75,0.5,0.5,0.5  --output_path output_layered_gamma_75_50_const

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.5  --output_path output_use_timestep_gamma_75_50_linear
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.5 --gamma_end 0.75  --output_path output_use_timestep_gamma_50_75_linear

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.6  --output_path output_use_timestep_gamma_75_60_linear
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.7  --output_path output_use_timestep_gamma_75_70_linear
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.5 --gamma_end 0.7  --output_path output_use_timestep_gamma_50_70_linear
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.5 --gamma_end 0.6  --output_path output_use_timestep_gamma_50_60_linear



# EXPERIMENTS FOR PAPER

# Baseline Experiments

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5  --output_path output/output_basline_gamma_0_5 >> output/output_basline_gamma_0_5.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75  --output_path output/output_basline_gamma_0_75 >> output/output_basline_gamma_0_75.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9  --output_path output/output_basline_gamma_0_9 >> output/output_basline_gamma_0_9.txt


# Layerwise Gamma


#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375  --output_path output/output_layered_gamma_75_375_10p >> output/output_layered_gamma_75_375_10p.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.375,0.45,0.525,0.6,0.675,0.75  --output_path output/output_layered_gamma_375_75_10p >> output/output_layered_gamma_375_75_10p.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.5,0.45,0.4,0.35,0.3,0.25  --output_path output/output_layered_gamma_50_25_10p >> output/output_layered_gamma_50_25_10p.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.25,0.3,0.35,0.4,0.45,0.5  --output_path output/output_layered_gamma_25_50_10p >> output/output_layered_gamma_25_50_10p.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.9,0.81,0.72,0.63,0.54,0.45  --output_path output/output_layered_gamma_90_45_10p >> output/output_layered_gamma_90_45_10p.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.45,0.54,0.63,0.72,0.81,0.9  --output_path output/output_layered_gamma_45_90_10p >> output/output_layered_gamma_45_90_10p.txt


# Timestep Gamma

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375  --output_path output/output_timestep_gamma_75_375_linear >> output/output_timestep_gamma_75_375_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.375 --gamma_end 0.75  --output_path output/output_timestep_gamma_375_75_linear >> output/output_timestep_gamma_375_75_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.5 --gamma_end 0.25  --output_path output/output_timestep_gamma_50_25_linear >> output/output_timestep_gamma_50_25_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.25 --gamma_end 0.5  --output_path output/output_timestep_gamma_25_50_linear >> output/output_timestep_gamma_25_50_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.9 --gamma_end 0.45  --output_path output/output_timestep_gamma_90_45_linear >> output/output_timestep_gamma_90_45_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.45 --gamma_end 0.9  --output_path output/output_timestep_gamma_45_90_linear >> output/output_timestep_gamma_45_90_linear.txt


# Controlnet Depth 1.1

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_depth_0_25_v1_1 >> output/output_gamma_0_75_cn_depth_0_25_v1_1.txt

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_depth_0_5_v1_1 >> output/output_gamma_0_75_cn_depth_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_depth_1_0_v1_1 >> output/output_gamma_0_75_cn_depth_1_0_v1_1.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_depth_0_25_v1_1 >> output/output_gamma_0_5_cn_depth_0_25_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_depth_0_5_v1_1 >> output/output_gamma_0_5_cn_depth_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_depth_1_0_v1_1 >> output/output_gamma_0_5_cn_depth_1_0_v1_1.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_depth_0_25_v1_1 >> output/output_gamma_0_9_cn_depth_0_25_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_depth_0_5_v1_1 >> output/output_gamma_0_9_cn_depth_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_depth_1_0_v1_1 >> output/output_gamma_0_9_cn_depth_1_0_v1_1.txt





# Controlnet Canny 1.1

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_canny_0_25_v1_1 >> output/output_gamma_0_75_cn_canny_0_25_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_canny_0_5_v1_1 >> output/output_gamma_0_75_cn_canny_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_canny_1_0_v1_1 >> output/output_gamma_0_75_cn_canny_1_0_v1_1.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet canny --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_canny_0_25_v1_1 >> output/output_gamma_0_5_cn_canny_0_25_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet canny --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_canny_0_5_v1_1 >> output/output_gamma_0_5_cn_canny_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet canny --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_5_cn_canny_1_0_v1_1 >> output/output_gamma_0_5_cn_canny_1_0_v1_1.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet canny --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_canny_0_25_v1_1 >> output/output_gamma_0_9_cn_canny_0_25_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet canny --cn_scale 0.5 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_canny_0_5_v1_1 >> output/output_gamma_0_9_cn_canny_0_5_v1_1.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet canny --cn_scale 1.0 --cn_version 1.1 --output_path output/output_gamma_0_9_cn_canny_1_0_v1_1 >> output/output_gamma_0_9_cn_canny_1_0_v1_1.txt



# Controlnet Depth 1.0

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_depth_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_depth_0_5_v1_0 >> output/output_gamma_0_75_cn_depth_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_depth_1_0_v1_0 >> output/output_gamma_0_75_cn_depth_1_0_v1_0.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_5_cn_depth_0_25_v1_0 >> output/output_gamma_0_5_cn_depth_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_5_cn_depth_0_5_v1_0 >> output/output_gamma_0_5_cn_depth_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.5 --controlnet depth --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_5_cn_depth_1_0_v1_0 >> output/output_gamma_0_5_cn_depth_1_0_v1_0.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_9_cn_depth_0_25_v1_0 >> output/output_gamma_0_9_cn_depth_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_9_cn_depth_0_5_v1_0 >> output/output_gamma_0_9_cn_depth_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.9 --controlnet depth --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_9_cn_depth_1_0_v1_0 >> output/output_gamma_0_9_cn_depth_1_0_v1_0.txt


# Layerwise ControlNet Scheduling depth at gamma=0.75 but only through decoder layers 6-11

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.15,0.175,0.20,0.225,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.225,0.20,0.175,0.15,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125 --output_path output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.225,0.20,0.175,0.15,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_corrected_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_corrected_v1_0.txt

#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.3,0.35,0.4,0.45,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_schedule_0_5_to_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_5_to_0_25_v1_0.txt

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.45,0.4,0.35,0.3,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.45,0.4,0.35,0.3,0.25,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_corrected_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_corrected_v1_0.txt


#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.6,0.7,0.8,0.9,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --output_path output/output_gamma_0_75_cn_depth_schedule_1_0_to_0_5_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_1_0_to_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 1.0,0.9,0.8,0.7,0.6,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_v1_0.txt

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 1.0,0.9,0.8,0.7,0.6,0.5,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --output_path output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_corrected_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_corrected_v1_0.txt






# Layerwise ControlNet Scheduling depth at gamma=0.75 but through all the layers, not just through decoder layers 6-11 as above

# Values are equally spaced across all 12 decoder layers (indices 0-11) + mid-block (index 12).
# Naming convention: X_to_Y = value at shallowest decoder (output_block 0, index 11) -> deepest (output_block 11, index 0).
# step = range/11 for 12 evenly spaced decoder values; mid-block (index 12) matches the shallowest end.

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.136,0.148,0.159,0.170,0.182,0.193,0.205,0.216,0.227,0.239,0.250,0.250 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_all_layers_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.250,0.239,0.227,0.216,0.205,0.193,0.182,0.170,0.159,0.148,0.136,0.125,0.125 --output_path output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_125_to_0_25_all_layers_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.250,0.273,0.295,0.318,0.341,0.364,0.386,0.409,0.432,0.455,0.477,0.500,0.500 --output_path output/output_gamma_0_75_cn_depth_schedule_0_5_to_0_25_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_5_to_0_25_all_layers_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.500,0.477,0.455,0.432,0.409,0.386,0.364,0.341,0.318,0.295,0.273,0.250,0.250 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_5_all_layers_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.500,0.545,0.591,0.636,0.682,0.727,0.773,0.818,0.864,0.909,0.955,1.000,1.000 --output_path output/output_gamma_0_75_cn_depth_schedule_1_0_to_0_5_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_1_0_to_0_5_all_layers_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 1.000,0.955,0.909,0.864,0.818,0.773,0.727,0.682,0.636,0.591,0.545,0.500,0.500 --output_path output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_all_layers_v1_0 >> output/output_gamma_0_75_cn_depth_schedule_0_5_to_1_0_all_layers_v1_0.txt



# Timestep-wise ControlNet Scheduling depth at gamma=0.75

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125 --cn_end_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_125_to_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_125_to_0_25_v1_0.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --cn_end_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_5_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_5_v1_0.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --cn_end_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_1_0_to_0_5_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_1_0_to_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --cn_end_scale_per_layer 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_1_0_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_1_0_v1_0.txt


# Timestep-wise ControlNet Scheduling depth at gamma=0.75 but only scheduled for decoder layers 6-11
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_125_to_0_25_decoder_6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_125_to_0_25_decoder_6_11_v1_0.txt


#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --cn_end_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_0_25_decoder_6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_0_25_decoder_6_11_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --cn_end_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_5_decoder_6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_5_decoder_6_11_v1_0.txt
#
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --cn_end_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_1_0_to_0_5_decoder_6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_1_0_to_0_5_decoder_6_11_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.5,0.5,0.5,0.5,0.5,0.5,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --cn_end_scale_per_layer 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_1_0_decoder_6_11_v1_0 >> output/output_gamma_0_75_cn_depth_ts_schedule_0_5_to_1_0_decoder_6_11_v1_0.txt




# Controlnet Canny 1.0

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_canny_0_25_v1_0c >> output/output_gamma_0_75_cn_canny_0_25_v1_0c.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_canny_0_5_v1_0c >> output/output_gamma_0_75_cn_canny_0_5_v1_0c.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet canny --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_canny_1_0_v1_0c >> output/output_gamma_0_75_cn_canny_1_0_v1_0c.txt

# Controlnet Seg 1.0

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet seg --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_seg_0_25_v1_0c >> output/output_gamma_0_75_cn_seg_0_25_v1_0.txt

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet seg --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_seg_0_5_v1_0c >> output/output_gamma_0_75_cn_seg_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet seg --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_seg_1_0_v1_0c >> output/output_gamma_0_75_cn_seg_1_0_v1_0.txt

# Controlnet Normal 1.0

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet normal --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_normal_0_25_v1_0c >> output/output_gamma_0_75_cn_normal_0_25_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet normal --cn_scale 0.5 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_normal_0_5_v1_0c >> output/output_gamma_0_75_cn_normal_0_5_v1_0.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet normal --cn_scale 1.0 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_normal_1_0_v1_0c >> output/output_gamma_0_75_cn_normal_1_0_v1_0.txt



# Combined experiments

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375 --controlnet depth --cn_scale 0.25 --cn_version 1.0 --output_path output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g >> output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g >> output/eval_output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g >> output/eval_output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_25g_histogan.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_scale 0.25 --cn_version 1.0  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_histogan.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375 --controlnet depth --cn_scale 0.5 --cn_version 1.0 --output_path output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g >> output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g >> output/eval_output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g >> output/eval_output_combined_layered_gamma_75_375_10p_controlnet_depth_cn_0_5g_histogan.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_scale 0.5 --cn_version 1.0  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_5g_histogan.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.15,0.175,0.20,0.225,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11 >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11 >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11 >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_layered_cn_0_25_to_0_125_decoder_6_11_histogan.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125 >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125 >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125_artfid.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125 >> output/eval_output_combined_timestep_gamma_75_375_linear_controlnet_depth_timestep_cn_0_25_to_0_125_histogan.txt

# Combined experiments rebuttal

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type cosine --controlnet depth --cn_version 1.0  --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear >> output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear >> output/eval_artfid_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear >> output/eval_histogan_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type cosine --controlnet depth --cn_version 1.0  --cn_start_scale_per_layer 0.125,0.15,0.175,0.20,0.225,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/eval_artfid_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/eval_histogan_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type sqrt --controlnet depth --cn_version 1.0  --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear >> output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear >> output/eval_artfid_output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear >> output/eval_histogan_output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_ts_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type sqrt --controlnet depth --cn_version 1.0  --cn_start_scale_per_layer 0.125,0.15,0.175,0.20,0.225,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/eval_artfid_output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear >> output/eval_histogan_output_combined_timestep_gamma_75_375_sqrt_controlnet_depth_cn_0_25_0_125_layerwise_linear.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type cosine --controlnet depth --cn_version 1.0 --cn_scale 0.25 --output_path output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25 >> output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25 >> output/eval_artfid_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25 >> output/eval_histogan_output_combined_timestep_gamma_75_375_cosine_controlnet_depth_cn_0_25.txt


# Nonlinear schedules

## Layerwise gamma

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.735,0.69,0.615,0.51,0.375  --output_path output/output_layered_gamma_75_375_quadratic >> output/output_layered_gamma_75_375_quadratic.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.5823,0.5128,0.4595,0.4146,0.375  --output_path output/output_layered_gamma_75_375_sqrt >> output/output_layered_gamma_75_375_sqrt.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.7142,0.6204,0.5046,0.4108,0.375  --output_path output/output_layered_gamma_75_375_cosine >> output/output_layered_gamma_75_375_cosine.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.7017,0.6427,0.5706,0.4825,0.375  --output_path output/output_layered_gamma_75_375_exponential >> output/output_layered_gamma_75_375_exponential.txt

## Timestep gamma

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375  --output_path output/output_timestep_gamma_75_375_linear_verify >> output/output_timestep_gamma_75_375_linear_verify.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type quadratic --output_path output/output_timestep_gamma_75_375_quadratic >> output/output_timestep_gamma_75_375_quadratic.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type sqrt --output_path output/output_timestep_gamma_75_375_sqrt >> output/output_timestep_gamma_75_375_sqrt.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type cosine --output_path output/output_timestep_gamma_75_375_cosine >> output/output_timestep_gamma_75_375_cosine.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --gamma_schedule_type exponential --output_path output/output_timestep_gamma_75_375_exponential >> output/output_timestep_gamma_75_375_exponential.txt


## Controlnet layerwise

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.15,0.175,0.20,0.225,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_linear_verify >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_linear_verify.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.17,0.2050,0.23,0.2450,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_quadratic >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_quadratic.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.1382,0.1532,0.1709,0.1941,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_sqrt >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_sqrt.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.1369,0.1682,0.2068,0.2381,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_cosine >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_cosine.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.1608,0.1902,0.2142,0.2339,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_exponential >> output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_v1_0_exponential.txt



## Controlnet timestep wise

#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0_linear_verify >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0_linear_verify.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_schedule_type quadratic --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0_quadratic >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0_quadratic.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_schedule_type sqrt --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0_sqrt >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0_sqrt.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_schedule_type cosine --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0_cosine >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0_cosine.txt
#
#python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_schedule_type exponential --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0_exponential >> output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder_6_11_v1_0_exponential.txt


# SD1.5

#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --gamma 0.75  --output_path output/output_basline_sd15_gamma_0_75 >> output/output_basline_sd15_gamma_0_75.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_basline_sd15_gamma_0_75 >> output/eval_artfid_output_basline_sd15_gamma_0_75.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_basline_sd15_gamma_0_75 >> output/eval_histogan_output_basline_sd15_gamma_0_75.txt
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375  --output_path output/output_layered_gamma_sd15_75_375_10p >> output/output_layered_gamma_sd15_75_375_10p.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_layered_gamma_sd15_75_375_10p >> output/eval_artfid_output_layered_gamma_sd15_75_375_10p.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_layered_gamma_sd15_75_375_10p >> output/eval_histogan_output_layered_gamma_sd15_75_375_10p.txt
#
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --gamma_per_layer 0.375,0.45,0.525,0.6,0.675,0.75  --output_path output/output_layered_gamma_sd15_375_75_10p >> output/output_layered_gamma_sd15_375_75_10p.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_layered_gamma_sd15_375_75_10p >> output/eval_artfid_output_layered_gamma_sd15_375_75_10p.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_layered_gamma_sd15_375_75_10p >> output/eval_histogan_output_layered_gamma_sd15_375_75_10p.txt
#
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375  --output_path output/output_timestep_gamma_sd15_75_375_linear >> output/output_timestep_gamma_sd15_75_375_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_timestep_gamma_sd15_75_375_linear >> output/eval_artfid_output_timestep_gamma_sd15_75_375_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_timestep_gamma_sd15_75_375_linear >> output/eval_histogan_output_timestep_gamma_sd15_75_375_linear.txt
#
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.375 --gamma_end 0.75  --output_path output/output_timestep_gamma_sd15_375_75_linear >> output/output_timestep_gamma_sd15_375_75_linear.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_timestep_gamma_sd15_375_75_linear >> output/eval_artfid_output_timestep_gamma_sd15_375_75_linear.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_timestep_gamma_sd15_375_75_linear >> output/eval_histogan_output_timestep_gamma_sd15_375_75_linear.txt
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.25 --cn_version 1.1 --output_path output/output_gamma_0_75_cn_depth_0_25_v1_1_sd15 >> output/output_gamma_0_75_cn_depth_0_25_v1_1_sd15.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_gamma_0_75_cn_depth_0_25_v1_1_sd15 >> output/eval_artfid_output_gamma_0_75_cn_depth_0_25_v1_1_sd15.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_gamma_0_75_cn_depth_0_25_v1_1_sd15 >> output/eval_histogan_output_gamma_0_75_cn_depth_0_25_v1_1_sd15.txt
#
#
#python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_scale 0.25 --cn_version 1.1  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15 >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15.txt
#python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15 >> output/eval_artfid_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15.txt
#python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15 >> output/eval_histogan_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15.txt


# SD2.1

python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --gamma 0.75  --output_path output/output_basline_sd21_gamma_0_75 >> output/output_basline_sd21_gamma_0_75.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_basline_sd21_gamma_0_75 >> output/eval_artfid_output_basline_sd21_gamma_0_75.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_basline_sd21_gamma_0_75 >> output/eval_histogan_output_basline_sd21_gamma_0_75.txt

python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375  --output_path output/output_layered_gamma_sd21_75_375_10p >> output/output_layered_gamma_sd21_75_375_10p.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_layered_gamma_sd21_75_375_10p >> output/eval_artfid_output_layered_gamma_sd21_75_375_10p.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_layered_gamma_sd21_75_375_10p >> output/eval_histogan_output_layered_gamma_sd21_75_375_10p.txt


python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --gamma_per_layer 0.375,0.45,0.525,0.6,0.675,0.75  --output_path output/output_layered_gamma_sd21_375_75_10p >> output/output_layered_gamma_sd21_375_75_10p.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_layered_gamma_sd21_375_75_10p >> output/eval_artfid_output_layered_gamma_sd21_375_75_10p.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_layered_gamma_sd21_375_75_10p >> output/eval_histogan_output_layered_gamma_sd21_375_75_10p.txt


python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375  --output_path output/output_timestep_gamma_sd21_75_375_linear >> output/output_timestep_gamma_sd21_75_375_linear.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_timestep_gamma_sd21_75_375_linear >> output/eval_artfid_output_timestep_gamma_sd21_75_375_linear.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_timestep_gamma_sd21_75_375_linear >> output/eval_histogan_output_timestep_gamma_sd21_75_375_linear.txt


python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.375 --gamma_end 0.75  --output_path output/output_timestep_gamma_sd21_375_75_linear >> output/output_timestep_gamma_sd21_375_75_linear.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_timestep_gamma_sd21_375_75_linear >> output/eval_artfid_output_timestep_gamma_sd21_375_75_linear.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_timestep_gamma_sd21_375_75_linear >> output/eval_histogan_output_timestep_gamma_sd21_375_75_linear.txt

python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.25 --output_path output/output_gamma_0_75_cn_depth_0_25_sd21 >> output/output_gamma_0_75_cn_depth_0_25_sd21.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_gamma_0_75_cn_depth_0_25_sd21 >> output/eval_artfid_output_gamma_0_75_cn_depth_0_25_sd21.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_gamma_0_75_cn_depth_0_25_sd21 >> output/eval_histogan_output_gamma_0_75_cn_depth_0_25_sd21.txt


python run_styleid.py --precomputed "" --sd_version 2.1 --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_scale 0.25  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21 >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21 >> output/eval_artfid_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21 >> output/eval_histogan_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_sd21.txt


python run_styleid.py --precomputed "" --ckpt /home/cognition/projects/StyleID/models/ldm/stable-diffusion-v1/v1-5-pruned-emaonly.safetensors --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 --controlnet depth --cn_scale 0.25 --cn_version 1.1  --output_path output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15_v2 >> output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15_v2.txt
python3 evaluation/eval_artfid.py --sty data/sty_eval/ --cnt data/cnt_eval/ --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15 >> output/eval_artfid_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15_v2.txt
python3 evaluation/eval_histogan.py --sty data/sty_eval --tar output/output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15 >> output/eval_histogan_output_combined_timestep_gamma_75_375_linear_controlnet_depth_cn_0_25g_v1_1_sd15_v2.txt

