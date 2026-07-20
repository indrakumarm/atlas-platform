#!/usr/bin/env bash

set -euo pipefail

echo "====================================="
echo "Initializing Atlas Platform Repository"
echo "====================================="

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$ROOT_DIR"

echo "Creating directory structure..."

directories=(
"docs/00-foundations"
"docs/01-gpu-fundamentals"
"docs/02-cuda-runtime"
"docs/03-ai-models"
"docs/04-inference-engines"
"docs/05-serving-platform"
"docs/06-platform-services"
"docs/07-kubernetes-ai"
"docs/08-distributed-ai"
"docs/09-observability"
"docs/10-security"
"docs/11-business"
"docs/glossary"

"labs/gpu"
"labs/cuda"
"labs/inference"
"labs/kubernetes"
"labs/platform"

"benchmarks/gpu"
"benchmarks/inference"
"benchmarks/networking"

"services/gateway"
"services/inference"
"services/scheduler"
"services/registry"
"services/auth"
"services/billing"

"docker"

"kubernetes/base"
"kubernetes/helm"

"terraform"

"examples"

"templates"

"scripts"

"journal"

"design/adr"
"design/architecture"
"design/diagrams"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

echo "Creating placeholder README files..."

modules=(
"00-foundations"
"01-gpu-fundamentals"
"02-cuda-runtime"
"03-ai-models"
"04-inference-engines"
"05-serving-platform"
"06-platform-services"
"07-kubernetes-ai"
"08-distributed-ai"
"09-observability"
"10-security"
"11-business"
)

for module in "${modules[@]}"; do

cat > "docs/${module}/README.md" <<EOF
# ${module}

## Objective

_TODO_

---

## Topics

- TODO

---

## Hands-on Labs

- TODO

---

## Deliverables

- TODO

---

## References

- TODO
EOF

done

touch LICENSE
touch README.md
touch ROADMAP.md
touch STATUS.md
touch .gitignore

echo "Creating .gitkeep files..."

find labs benchmarks services journal design kubernetes terraform examples templates docker -type d -exec touch {}/.gitkeep \;

echo
echo "Repository initialized successfully!"
echo
echo "Next steps:"
echo "1. Populate README.md"
echo "2. Populate ROADMAP.md"
echo "3. Commit to Git"
echo
