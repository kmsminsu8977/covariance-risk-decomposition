#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

source "$(conda info --base)/etc/profile.d/conda.sh"
env_name="$(sed -n 's/^name:[[:space:]]*//p' environment.yml | head -n 1)"

if [ -z "$env_name" ]; then
  echo "environment.yml must define a conda environment name."
  exit 1
fi

if conda env list | awk '{print $1}' | grep -qx "$env_name"; then
  conda env update -n "$env_name" -f environment.yml --prune
else
  conda env create -f environment.yml
fi

conda run -n "$env_name" python -m ipykernel install --user --name "$env_name" --display-name "Python ($env_name)"

if command -v direnv >/dev/null 2>&1; then
  direnv allow
fi
