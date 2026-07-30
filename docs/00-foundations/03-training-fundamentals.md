
---
Document ID: AF-003
Module: AI Foundations
Title: Training Fundamentals
Version: 1.0
Status: Draft

Prerequisites:
  - AF-001 AI Landscape
  - AF-002 LLM Lifecycle

Next Document:
  - AF-004 Neural Networks
---

# Training Fundamentals

## Overview

Training is the process through which a machine learning model learns from data by continuously improving its internal parameters. Unlike traditional software, where a programmer explicitly writes the logic, a machine learning model discovers the appropriate behavior by repeatedly adjusting its parameters based on the errors it makes.

Understanding training is fundamental to understanding modern AI systems. Every large language model, image generation model, or recommendation engine has undergone this process before it can be used for inference.

Although Atlas primarily focuses on **AI inference infrastructure**, understanding how models are trained explains many of the design decisions behind GPUs, model formats, quantization, distributed systems, and inference engines.

---

# Why Training Exists

Traditional software follows rules explicitly written by developers.

Example:

```
IF Age > 18
    Allow Access
ELSE
    Deny Access
```

The computer never improves this logic on its own.

Machine learning follows a different approach.

Instead of writing rules, developers provide:

- Training data
- A mathematical model
- A learning algorithm

The model gradually discovers the relationships within the data by adjusting its parameters.

Training is therefore **the process of improving a model rather than programming it.**

---

# Training vs Inference

Training and inference are often confused, but they serve different purposes.

| Training | Inference |
|----------|-----------|
| Learns from data | Uses learned knowledge |
| Updates model parameters | Parameters remain fixed |
| Computationally expensive | Computationally cheaper |
| Requires large datasets | Uses new input data |
| Produces a trained model | Produces predictions |

A useful way to think about this is:

> **Training changes the model. Inference uses the model.**

---

# What is a Mathematical Model?

A mathematical model is a mathematical function whose behavior is determined by adjustable parameters.

Unlike traditional algorithms, these parameters are **not manually programmed**.

Instead, they are learned automatically during training.

A simple example is:

```
Prediction =
w₁ × x₁ +
w₂ × x₂ +
w₃ × x₃
```

Where:

- x = input features
- w = learnable parameters (weights)

Training modifies these weights so that predictions become increasingly accurate.

---

# Features

A feature is an input value describing the data being analyzed.

Example (House Price Prediction):

- House Size
- Number of Bedrooms
- Age of House
- Distance from City

The model combines these features to produce a prediction.

Features represent **information**.

---

# Weights

Weights determine how strongly each feature influences the prediction.

Example:

```
Prediction =
200 × Size
+
500000 × Bedrooms
-
10000 × Age
```

The numbers (200, 500000, -10000) are weights.

Initially these values are random.

Training gradually adjusts them until predictions become more accurate.

A useful mental model is:

> Features describe the data.
>
> Weights describe how important each feature is.

---

# Forward Pass

During the forward pass, the model receives input data and produces a prediction.

Example:

```
Input

↓

Model

↓

Prediction
```

At this stage, no learning has occurred.

The model is simply applying its current parameters.

---

# Loss

After making a prediction, the model compares it with the correct answer.

The difference between the prediction and the actual value is measured using a **loss function**.

Loss answers one question:

> **How wrong is the model?**

A lower loss indicates better predictions.

The objective of training is to reduce the loss over time.

---

# Gradient (Conceptual)

Knowing that a prediction is wrong is not sufficient.

The model must also determine **which parameters should change**.

A gradient provides this information.

Conceptually, a gradient answers:

> **If this weight changes slightly, what happens to the loss?**

This information guides the learning process.

---

# Backpropagation (Conceptual)

Backpropagation identifies how much each parameter contributed to the final error.

Rather than changing one weight at a time, it calculates how every learnable parameter should be adjusted.

Conceptually:

```
Prediction

↓

Loss

↓

Backpropagation

↓

Gradient for Every Weight
```

Backpropagation is one of the primary reasons training is computationally intensive.

---

# Optimizer

An optimizer uses the gradients calculated during backpropagation to update the model's parameters.

Conceptually:

```
Current Weights

↓

Gradient

↓

Optimizer

↓

Updated Weights
```

The optimizer determines **how** the weights should change to reduce future errors.

---

# Learning Rate

The learning rate determines the size of each parameter update.

A learning rate that is too large may cause training to become unstable.

A learning rate that is too small may make training extremely slow.

Choosing an appropriate learning rate is one of the most important aspects of successful model training.

---

# The Complete Training Loop

Every iteration of training follows the same high-level workflow.

```text
Initialize Random Weights
        │
        ▼
Receive Training Data
        │
        ▼
Forward Pass
        │
        ▼
Prediction
        │
        ▼
Calculate Loss
        │
        ▼
Backpropagation
        │
        ▼
Compute Gradients
        │
        ▼
Optimizer Updates Weights
        │
        ▼
Repeat
```

Training repeats this process millions—or even billions—of times until the model converges.

---

# Why Training is Expensive

Modern language models contain billions of learnable parameters.

Every training iteration requires:

- Forward computation
- Loss calculation
- Backpropagation
- Gradient computation
- Parameter updates

These operations involve enormous numbers of matrix calculations, making training computationally expensive.

This is one of the primary reasons why modern AI relies heavily on GPUs.

---

# Atlas Perspective

Atlas is primarily an AI inference platform.

However, understanding training provides the foundation for many later topics, including:

- GPU Architecture
- CUDA
- Tensor Cores
- Quantization
- Model Formats
- vLLM
- SGLang
- Distributed Inference

Although Atlas does not aim to become a training framework, every AI Infrastructure Engineer should understand the principles of model training.

---

# Key Takeaways

- Training changes the model; inference uses the model.
- Models learn by adjusting weights.
- Features describe the input.
- Weights determine feature importance.
- Loss measures prediction error.
- Gradients indicate how weights should change.
- Backpropagation computes gradients.
- Optimizers update model parameters.
- Training is fundamentally an optimization process.

---

# Related Documents

Previous

- AF-001 AI Landscape
- AF-002 LLM Lifecycle

Next

- AF-004 Neural Networks
- GF-001 Why GPUs?
