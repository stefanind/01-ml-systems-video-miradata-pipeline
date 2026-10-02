### setup

apt-get update
apt-get install -y ffmpeg

ffmpeg -version

python -m pip install --upgrade pip setuptools wheel

python -m pip install -e ".[dev]"


ml_systems/
│
├── notebooks/
│   ├── 01_single_video_basics.ipynb
│   ├── 02_sampling_and_preprocessing.ipynb
│   ├── 03_gpu_inference.ipynb
│   ├── 04_pipeline_benchmark.ipynb
│   ├── 05_multiprocessing.ipynb
│   └── 06_dataloader_experiments.ipynb
│
├── src/
│   └── ml_systems/
│       ├── __init__.py
│       ├── video.py
│       ├── preprocessing.py
│       ├── inference.py
│       ├── pipeline.py
│       └── utils.py
│
├── benchmarks/
│   ├── benchmark_decode.py
│   ├── benchmark_workers.py
│   ├── benchmark_batch_size.py
│   └── benchmark_transfer.py
│
├── tests/
│   ├── test_video.py
│   ├── test_preprocessing.py
│   └── test_pipeline.py
│
├── scripts/
│   ├── download_sample.py
│   └── process_dataset.py
│
├── data/
│   ├── metadata/
│   ├── raw/
│   ├── clips/
│   └── processed/
│
├── results/
│   ├── benchmarks/
│   ├── profiles/
│   └── figures/
│
├── pyproject.toml
├── requirements.txt
├── .gitignore
└── README.md