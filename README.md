# Scheduled Style Injection: Expanding the Style-Content Pareto Frontier in Training-Free Diffusion-based Style Transfer

**[Amey Sunil Kulkarni](https://www.linkedin.com/in/amey-sk/)** · Independent Researcher

**NTIRE Workshop @ CVPR 2026**

[![Paper](https://img.shields.io/badge/Paper-NTIRE%40CVPR%202026-blue)](https://github.com/ameyskulkarni/scheduled_style_injection/blob/main/NTIRE-46.pdf)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

![Qualitative comparison](asset/qualitative_comparison.png)

*Each row: content + style → Baseline (StyleID γ=0.75) · Timestep-γ schedule · ControlNet depth · **Combined (ours)**. Red crops highlight style-discriminative regions; green crops highlight content-sensitive regions.*

---

## Abstract

Style transfer with pre-trained diffusion models has advanced rapidly, but a core question remains underexplored: **where in the model should style injection be strongest?**

StyleID, the leading training-free method, uses a single global parameter (γ) uniformly across all layers and timesteps, which forces a fixed tradeoff between style quality and content preservation. We show this tradeoff is unnecessarily rigid.

We systematically explore four dimensions of control: varying style injection strength across decoder layers, across denoising timesteps, and scheduling ControlNet geometric conditioning along both axes. **The pattern is consistent everywhere: decreasing schedules — with stronger structural signal injection in shallower layers and earlier timesteps — reliably outperform the reverse.** Beyond direction, schedule shape matters: cosine and square-root timestep schedules outperform linear.

Most importantly, gamma scheduling and ControlNet conditioning are **nearly independent**, so their combination expands the Pareto frontier, offering superior tradeoffs between style fidelity and content preservation compared to any single baseline setting.

Our best balanced configuration achieves **ArtFID 27.036 vs. StyleID's 28.801 — a 6.1% relative improvement**, validated across 35 configurations and over 28,000 stylized images. All modifications are training-free, parameter-free, and require only a few lines of scheduling code.

---

## Key Results

| Method | ArtFID ↓ | FID ↓ | LPIPS ↓ | CFSD ↓ |
|---|---|---|---|---|
| AdaIN | 30.933 | 18.242 | 0.608 | 0.315 |
| StyTR² | 30.720 | 18.890 | 0.545 | 0.301 |
| AesPA-Net | 31.420 | 19.760 | 0.514 | 0.246 |
| StyleID (baseline) | 28.801 | 18.131 | **0.505** | **0.228** |
| AttenST | 28.693 | 18.559 | **0.467** | — |
| **Ours (cos-γ, timestep ↓)** | **26.976** | **16.124** | 0.575 | 0.297 |
| **Ours (√γ + CN, both timestep ↓)** | 27.036 | 16.285 | 0.564 | 0.295 |

*800 content-style pairs (20 MS-COCO × 40 WikiArt). ArtFID is the primary metric.*

### Pareto Frontier Expansion

![Pareto frontier](asset/pareto_frontier.png)

*Our combined configurations (green) lie strictly outside the StyleID baseline frontier (gray), demonstrating that scheduling expands the achievable tradeoff space rather than just shifting the operating point.*

---

## How It Works

StyleID transfers style by replacing content's self-attention **K** and **V** features with those from the style image, and blending queries with a mixing parameter γ ∈ [0, 1]. A higher γ preserves more content; a lower γ transfers more style. StyleID uses a **single fixed γ** everywhere.

We replace this fixed γ with **monotonically decreasing schedules** along two independent axes:

| Axis | Why decreasing works |
|---|---|
| **Decoder layers** (6 → 11) | Shallow layers encode coarse spatial structure (content-sensitive); deep layers encode fine texture (style-tolerant) |
| **Denoising timesteps** (0 → 49) | Early steps establish global composition (content-sensitive); late steps refine texture (style-tolerant) |

We additionally schedule **ControlNet** depth conditioning strength along the same axes. Because ControlNet (geometric structure) and γ-scheduling (attention style) operate on orthogonal dimensions, their gains compose nearly additively.

**Schedule shapes** available: `linear`, `cosine`, `sqrt`, `quadratic`, `exponential`. Cosine and square-root outperform linear by concentrating content protection in the most structure-sensitive early steps.

---

## Contributions

- **Scheduled style injection.** A monotonically decreasing schedule on γ across decoder layers or denoising timesteps consistently outperforms any fixed operating point. Non-linear shapes (cosine, square-root) further improve over linear.

- **ControlNet conditioning scheduling.** Applying the same scheduling principle to ControlNet conditioning scale provides a complementary content-preservation axis that operates independently of attention-based style injection.

- **Orthogonality and Pareto expansion.** Gamma scheduling and ControlNet conditioning compose nearly additively, confirming they act on independent dimensions. Combined configurations expand the achievable Pareto frontier, with findings generalizing across SD 1.4, 1.5, and 2.1 with identical rank ordering.

---

## Setup

Our codebase builds on [CompVis/stable-diffusion](https://github.com/CompVis/stable-diffusion) and [MichalGeyer/plug-and-play](https://github.com/MichalGeyer/plug-and-play), and extends [StyleID](https://github.com/jiwoogit/StyleID) with scheduling. Requires a single GPU with ≥20 GB VRAM (tested on NVIDIA RTX 3090).

### 1. Create Conda Environment

```bash
conda env create -f environment.yaml
conda activate scheduled_style_injection
```

### 2. Download Stable Diffusion Weights

Download `sd-v1-4.ckpt` from [CompVis/stable-diffusion-v-1-4-original](https://huggingface.co/CompVis/stable-diffusion-v-1-4-original) and link it:

```bash
mkdir -p models/ldm/stable-diffusion-v1
ln -s <path/to/sd-v1-4.ckpt> models/ldm/stable-diffusion-v1/model.ckpt
```

SD 1.5 and 2.1 are also supported via `--sd_version 1.5` or `--sd_version 2.1` (download respective checkpoints from HuggingFace and update the symlink path).

### 3. (Optional) Install taming-transformers

```bash
pip install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
```

---

## Usage

### Quick Start

```bash
# StyleID baseline (γ = 0.75, fixed everywhere)
python run_styleid.py --cnt data/cnt --sty data/sty
```

### Paper Configurations

The commands below reproduce the configurations reported in the paper. All use the default `data/cnt` and `data/sty` sample directories.

#### 1. Best Overall ArtFID — Cosine Timestep-γ Schedule (Table 1, col. 14)
> ArtFID **26.976** · FID 16.124 · LPIPS 0.575

```bash
python run_styleid.py \
  --cnt data/cnt --sty data/sty \
  --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 \
  --gamma_schedule_type cosine \
  --output_path output/ours_cos_gamma_timestep
```

#### 2. Best Balanced — √γ + Timestep-Scheduled ControlNet (Table 1, col. 15)
> ArtFID **27.036** · FID 16.285 · LPIPS 0.564 · CFSD 0.295

```bash
python run_styleid.py \
  --cnt data/cnt --sty data/sty \
  --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 \
  --gamma_schedule_type sqrt \
  --controlnet depth --cn_version 1.0 \
  --cn_start_scale_per_layer 0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25 \
  --cn_end_scale_per_layer 0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125,0.125 \
  --output_path output/ours_sqrt_gamma_cn_timestep
```

#### 3. Linear Timestep-γ (ablation baseline for schedule shape comparison)
> ArtFID 27.089 · FID 16.250 · LPIPS 0.570

```bash
python run_styleid.py \
  --cnt data/cnt --sty data/sty \
  --use_timestep_gamma --gamma_start 0.75 --gamma_end 0.375 \
  --gamma_schedule_type linear \
  --output_path output/ours_linear_gamma_timestep
```

#### 4. Layer-wise γ Schedule (Table 2, Group 1)
> ArtFID 27.471 · FID 16.506 · LPIPS 0.569

```bash
python run_styleid.py \
  --cnt data/cnt --sty data/sty \
  --gamma_per_layer 0.75,0.675,0.6,0.525,0.45,0.375 \
  --output_path output/ours_layerwise_gamma
```

#### 5. ControlNet Only — Fixed Scale (ablation, Group 3)
> ArtFID 29.111 · FID 18.460 · LPIPS 0.496

```bash
python run_styleid.py \
  --cnt data/cnt --sty data/sty \
  --controlnet depth --cn_scale 0.25 --cn_version 1.0 \
  --output_path output/ours_cn_fixed_025
```

### Key Parameters

| Parameter | Default | Description |
|---|---|---|
| `--gamma` | 0.75 | Global query-preservation weight (higher = more content) |
| `--T` | 1.5 | Attention temperature scaling |
| `--use_timestep_gamma` | False | Enable timestep-varying γ schedule |
| `--gamma_start` | — | γ at timestep 0 (high-noise, content-sensitive) |
| `--gamma_end` | — | γ at timestep 49 (low-noise, style-tolerant) |
| `--gamma_schedule_type` | `linear` | Schedule shape: `linear`, `cosine`, `sqrt`, `quadratic`, `exponential` |
| `--gamma_per_layer` | — | Comma-separated γ for decoder layers 6–11 (6 values) |
| `--controlnet` | None | ControlNet condition type: `depth`, `canny`, `normal`, `seg`, `hed` |
| `--cn_scale` | 1.0 | Fixed ControlNet conditioning scale |
| `--cn_version` | `1.0` | ControlNet version (`1.0` or `1.1`) |
| `--cn_start_scale_per_layer` | — | Per-layer CN scales at first timestep (13 values) |
| `--cn_end_scale_per_layer` | — | Per-layer CN scales at last timestep (13 values) |
| `--gamma_schedule_type` (CN) | `linear` | Schedule shape for CN (`--cn_schedule_type`) |
| `--precomputed` | `./precomputed_feats` | Cache directory for DDIM inversion features (set to `""` to disable) |
| `--sd_version` | — | `1.4`, `1.5`, or `2.1` — auto-sets config and checkpoint paths |

For the full ControlNet per-layer scheduling API, layer index reference, and implementation notes see **[docs/controlnet_scheduling.md](docs/controlnet_scheduling.md)**.

### Precomputed Feature Cache

By default, DDIM inversion features are cached to `precomputed_feats/` (saves ~3 GB per image but eliminates re-inversion on subsequent runs). To disable:

```bash
python run_styleid.py --precomputed "" --cnt data/cnt --sty data/sty
```

### Diffusers Implementation

A lighter-weight [diffusers](https://huggingface.co/diffusers)-based implementation of the StyleID baseline is available in `diffusers_implementation/`. Note: this sub-implementation does not yet support gamma or ControlNet scheduling; use `run_styleid.py` from the root for full paper functionality.

```bash
cd diffusers_implementation
python run_styleid_diffusers.py --cnt_fn data/cnt.png --sty_fn data/sty.png --gamma 0.75 --T 1.5
```

---

## Evaluation

We follow the evaluation protocol of StyleID: 20 content images from [MS-COCO](https://cocodataset.org) and 40 style images from [WikiArt](https://github.com/cs-chan/ArtGAN/tree/master/WikiArt%20Dataset), yielding 800 stylized outputs per configuration.

### 1. Prepare Data

Download the evaluation splits and place them in `data/cnt/` (content) and `data/sty/` (style). Then replicate images to match the 800-pair count:

```bash
python util/copy_inputs.py --cnt data/cnt --sty data/sty
# produces data/cnt_eval/ and data/sty_eval/ with 800 images each
```

### 2. Run Evaluation

```bash
# ArtFID (primary metric — style + content combined)
cd evaluation
python eval_artfid.py --sty ../data/sty_eval --cnt ../data/cnt_eval --tar ../output/ours_cos_gamma_timestep

# Histogram loss (style fidelity)
python eval_histogan.py --sty ../data/sty_eval --tar ../output/ours_cos_gamma_timestep
```

We use [matthias-wright/art-fid](https://github.com/matthias-wright/art-fid) for ArtFID and [mahmoudnafifi/HistoGAN](https://github.com/mahmoudnafifi/HistoGAN) for histogram loss.

### Expected Results (γ_base = 0.75, SD 1.4)

| Configuration | ArtFID ↓ | FID ↓ | LPIPS ↓ | CFSD ↓ |
|---|---|---|---|---|
| Baseline (γ=0.75 fixed) | 28.806 | 18.135 | 0.505 | 0.228 |
| γ: 0.75→0.375 (layer ↓, lin) | 27.471 | 16.506 | 0.569 | 0.287 |
| γ: 0.75→0.375 (timestep ↓, lin) | 27.089 | 16.250 | 0.570 | 0.291 |
| γ: 0.75→0.375 (timestep ↓, **cos**) | **26.976** | 16.124 | 0.575 | 0.297 |
| γ: 0.75→0.375 (timestep ↓, **√**) | 26.995 | **16.067** | 0.582 | 0.304 |
| CN fixed (s=0.25) | 29.111 | 18.460 | **0.496** | **0.225** |
| **√γ + CN (both timestep ↓)** | **27.036** | 16.285 | 0.564 | 0.295 |

Results generalize to SD 1.5 and 2.1 with identical rank ordering (see paper Table 3).

---

## Ablation: Schedule Shape Matters

| Shape | ArtFID ↓ | FID ↓ | LPIPS ↓ |
|---|---|---|---|
| Linear | 27.089 | 16.250 | 0.570 |
| Exponential | 27.182 | 16.389 | 0.563 |
| Quadratic | 27.270 | 16.515 | 0.557 |
| **Cosine** | **26.976** | 16.124 | 0.575 |
| **Square-root** | 26.995 | **16.067** | 0.582 |

*All timestep-decreasing, γ: 0.75→0.375. Cosine and square-root outperform linear by concentrating content protection in the most structure-sensitive early denoising steps.*

---

## Citation

If you find this work useful, please cite:

```bibtex
@inproceedings{kulkarni2026scheduled,
  title     = {Scheduled Style Injection: Expanding the Style-Content Pareto Frontier
               in Training-Free Diffusion-based Style Transfer},
  author    = {Kulkarni, Amey Sunil},
  booktitle = {Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern
               Recognition Workshops (NTIRE)},
  year      = {2026}
}
```

This work builds directly on StyleID — please also cite the original:

```bibtex
@inproceedings{chung2024styleid,
  title     = {Style Injection in Diffusion: A Training-free Approach for Adapting
               Large-scale Diffusion Models for Style Transfer},
  author    = {Chung, Jiwoo and Hyun, Sangeek and Heo, Jae-Pil},
  booktitle = {Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern
               Recognition (CVPR)},
  year      = {2024}
}
```

---

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.
