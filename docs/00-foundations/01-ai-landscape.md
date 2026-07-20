---
id: AF-001
title: AI Landscape
module: AI Foundations
version: 0.1
status: Draft
owner: Atlas
last_updated: 2026-07-20
---

# AI Landscape

## Objective

Understand where Large Language Models (LLMs) fit within the broader Artificial Intelligence ecosystem and where Atlas fits within the modern AI stack.

---

# Why This Chapter Exists

Many engineers begin learning AI by installing a model or calling an API.

That approach often leads to fragmented knowledge because the surrounding ecosystem is never explained.

Before learning GPUs, CUDA, inference engines, or Kubernetes, we need a mental map of the AI landscape.

This chapter builds that map.

---

# The Big Picture

```text
Artificial Intelligence (AI)
│
├── Machine Learning (ML)
│   │
│   ├── Supervised Learning
│   ├── Unsupervised Learning
│   ├── Reinforcement Learning
│   │
│   └── Deep Learning
│         │
│         ├── Computer Vision
│         ├── Speech
│         ├── Recommendation Systems
│         └── Generative AI
│                 │
│                 ├── Large Language Models
│                 ├── Image Models
│                 ├── Audio Models
│                 └── Video Models
```

---

# Evolution of AI

| Era | Primary Focus |
|------|---------------|
| Rule-Based Systems | Human-written rules |
| Machine Learning | Learning from data |
| Deep Learning | Multi-layer neural networks |
| Generative AI | Creating new content |
| Agentic AI | Planning and executing tasks |

---

# Where Atlas Fits

Atlas is **not** a model.

Atlas is **not** a training framework.

Atlas is an **AI Infrastructure Platform**.

Its responsibility begins **after** a model has already been trained.

```text
Research Company
(OpenAI, Meta, Google)

        │

        ▼

Pretrained Model

        │

        ▼

Atlas

        │

        ├── Model Storage
        ├── Model Deployment
        ├── GPU Scheduling
        ├── Inference
        ├── APIs
        ├── Monitoring
        ├── Authentication
        ├── Billing

        │

        ▼

Applications
```

---

# Layers of the AI Ecosystem

```text
Applications

Chatbots
Copilots
Search
Assistants

────────────────────────

Inference Platforms

Atlas
vLLM
SGLang
TGI

────────────────────────

Foundation Models

Llama
Qwen
Mistral
Gemma

────────────────────────

Deep Learning Frameworks

PyTorch
JAX
TensorFlow

────────────────────────

CUDA

────────────────────────

GPU Hardware

NVIDIA
AMD
Intel
```

One of the goals of Atlas is to understand every layer below the application.

---

# What Atlas Will Build

Atlas will eventually include:

- AI Gateway
- Authentication
- API Management
- Model Registry
- GPU Scheduler
- Inference Engine Integration
- Kubernetes Deployment
- Monitoring
- Billing
- Benchmarking Framework

---

# Industry Perspective

Different companies specialize in different layers.

| Company | Primary Focus |
|----------|---------------|
| OpenAI | Foundation models + APIs |
| Anthropic | Foundation models |
| Together AI | Inference platform |
| RunPod | GPU infrastructure |
| CoreWeave | GPU cloud |
| Fireworks AI | High-performance inference |
| Hugging Face | Model ecosystem |

Atlas aims to understand how these companies solve infrastructure problems rather than replicate their businesses.

---

# Atlas Perspective

Atlas is intentionally opinionated.

Instead of asking:

> "How do I call an API?"

Atlas asks:

> "How would I build the infrastructure behind that API?"

That engineering mindset guides every module in this repository.

---

# Key Takeaways

- AI is a broad field with many sub-disciplines.
- Atlas focuses on **AI Infrastructure**, not model research.
- Understanding the AI stack provides context for every future module.
- Infrastructure engineering begins after models are trained.

---

# What's Next

AF-002 — LLM Lifecycle

We'll follow a model from training all the way to production inference.
