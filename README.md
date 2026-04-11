
### Paper - Scheduled Style Injection: Expanding the Style-Content Pareto Frontier in Training-Free Diffusion-based Style Transfer


## Usage

**To run our code, please follow these steps:**

1. [Setup](#setup)
2. [Run scheduled style injection](#run-scheduled-style-injection)
3. [Evaluation](#evaluation)

It may require a single GPU with more than 20GB of memory.
I tested the code in the [pytorch/pytorch:1.8.1-cuda11.1-cudnn8-devel](https://hub.docker.com/layers/pytorch/pytorch/1.8.1-cuda11.1-cudnn8-devel/images/sha256-024af183411f136373a83f9a0e5d1a02fb11acb1b52fdcf4d73601912d0f09b1) Docker image.

#### ** You can also refer to "diffusers_implementation/". **

## Setup

Our codebase is built on ([CompVis/stable-diffusion](https://github.com/CompVis/stable-diffusion) and [MichalGeyer/plug-and-play](https://github.com/MichalGeyer/plug-and-play))
and has similar dependencies and model architecture.

### Create a Conda Environment

```
conda env create -f environment.yaml
conda activate scheduled_style_injection
```

### Download StableDiffusion Weights

Download the StableDiffusion weights from the [CompVis organization at Hugging Face](https://huggingface.co/CompVis/stable-diffusion-v-1-4-original)
(download the `sd-v1-4.ckpt` file), and link them:
```
ln -s <path/to/model.ckpt> models/ldm/stable-diffusion-v1/model.ckpt 
```

## Run Scheduled Style Injection

For running StyleID, run:

```
python run_styleid.py --cnt <content_img_dir> --sty <style_img_dir>
```
For running default configuration in sample image files, run:
```
python run_styleid.py --cnt data/cnt --sty data/sty --gamma 0.75 --T 1.5  # default
python run_styleid.py --cnt data/cnt --sty data/sty --gamma 0.3 --T 1.5   # high style fidelity
```

To run a gamma layerwise and timestep wise schedule - 

```
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375  --output_path output/output_layered_gamma_75_375_10p
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375  --output_path output/output_timestep_gamma_75_375_linear

```

To run controlnet fixed - 

```
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_scale 0.25 --cn_version 1.0 --output_path output/output_gamma_0_75_cn_depth_0_25_v1_0 >> output/output_gamma_0_75_cn_depth_0_25_v1_0.txt

```

To schedule controlnet along the layer and timestep axis - 

```
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.125,0.136,0.148,0.159,0.170,0.182,0.193,0.205,0.216,0.227,0.239,0.250,0.250 --output_path output/output_gamma_0_75_cn_depth_schedule_0_25_to_0_125_all_layers_v1_0 >> 
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty --gamma 0.75 --controlnet depth --cn_version 1.0 --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.25,0.25,0.25,0.25,0.25,0.25,0.25 --output_path output/output_gamma_0_75_cn_depth_ts_schedule_0_25_to_0_125_decoder6_11_v1_0 

```
### Save Precomputed Inversion Features
By default, it generates a "precomputed_feats" directory and saves the DDIM inversion feature of each input image.
This reduces the time for two DDIM inversions but requires a significant amount of storage (over 3 GB for each image).
If you encounter "no space left" error, please set the "precomputed" parameter as follows:

```
python run_styleid.py --precomputed "" # not save DDIM inversion features
```

## Evaluation

For a quantitative evaluation, we incorporate a set of randomly selected inputs from [MS-COCO](https://cocodataset.org) and [WikiArt](https://github.com/cs-chan/ArtGAN/tree/master/WikiArt%20Dataset) in "./data" directory.


Before executing evalution code, please duplicate the content and style images to match the number of stylized images first. (40 styles, 20 contents -> 800 style images, 800 content images)

run:
```
python util/copy_inputs.py --cnt data/cnt --sty data/sty
```

We largely employ [matthias-wright/art-fid](https://github.com/matthias-wright/art-fid) and [mahmoudnafifi/HistoGAN](https://github.com/mahmoudnafifi/HistoGAN) for our evaluation.

### Art-fid
run:
```
cd evaluation;
python eval_artfid.py --sty ../data/sty_eval --cnt ../data/cnt_eval --tar ../output
```

### Histogram loss
run:
```
cd evaluation;
python eval_histogan.py --sty ../data/sty_eval --tar ../output
```

Also, we additionally provide the style and content images for qualitative comparsion, in "./data_vis" directory.