# 🎨 Generate Images with LoRA – Featuring Dame Sermonde

Welcome to the medieval influencer lab.

This project generates images using Hugging Face's `FluxPipeline` model combined with a custom LoRA adapter (`DameSermonde`) in a reproducible, prompt-configurable environment.

It's designed for use on platforms like **RunPod** or locally, with support for:
- multiple prompts via `config.json`
- LoRA adapters
- seed-based image variation
- clean folder output structure

---

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/margotfournier/generate_images_with_lora.git
cd generate_images_with_lora
```

### 2. Set your Hugging Face access token

Create a file:

```
secrets/hf_token.txt
```

Paste your token inside.  
> 🔐 Get it here: https://huggingface.co/settings/tokens

Alternatively, you can set it as an environment variable:

```bash
export HUGGINGFACE_HUB_TOKEN=hf_XXXXXXXXXXXXXXXXXXXX
```

---

### 3. Install dependencies

```bash
bash setup.sh
```

---

### 4. Run the notebook

```bash
source .venv/bin/activate
jupyter lab
```

Then open `dame_sermonde_notebook.ipynb`.

---

## 🧠 How it works

- `config.json` defines:
  - the LoRA adapter (`adapter_name`, `repo`, `weight_name`)
  - a list of prompts and output folders

- The notebook loads the base model + adapter, then generates **8 image variations per prompt** by changing the random seed.

- All outputs are saved in `outputs/prompt_xxx/` with the associated `prompt.txt`.

---

## 🖼️ Display image results

Inside the notebook, you can use this cell to display all images from one prompt:

```python
display_images_grid("outputs/prompt_000")
```

---

## 📁 Folder structure

```
outputs/
├── prompt_000/
│   ├── damesermonde_w70_s42.png
│   ├── ...
│   └── prompt.txt
├── prompt_001/
│   ├── ...
```

---

## 📦 Requirements

See [`requirements.txt`](requirements.txt) for the full list. Key libraries:
- `torch`
- `diffusers`
- `transformers`
- `huggingface_hub`
- `peft`

---

## 🔄 Next Steps (optional)

- [ ] Add Docker support for fully portable setup
- [ ] Auto-pull latest LoRA from Hugging Face
- [ ] CLI version for batch generation

---

## 🛡 License

MIT — feel free to use, remix, or expand.

---

Created with ❤️ by [@margotfournier](https://github.com/margotfournier)
