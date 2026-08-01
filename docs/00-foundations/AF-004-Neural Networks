---
Document ID: AF-004
Module: AI Foundations
Title: Neural Networks
Version: 1.0
Status: Draft

Prerequisites:
  - AF-001 AI Landscape
  - AF-002 LLM Lifecycle
  - AF-003 Training Fundamentals

Next Document:
  - AF-005 Transformer Architecture
---

# Neural Networks

## Overview

In the previous chapter, we learned how a model is trained by adjusting its weights to reduce prediction errors.

But an important question remains:

> **What exactly is the model that is being trained?**

The answer is a **Neural Network**.

A neural network is a mathematical structure made up of many simple computational units called **neurons**. By connecting thousands—or even billions—of these neurons together, the model can learn extremely complex relationships within data.

Every modern AI system—including image classifiers, speech recognition systems, recommendation engines, and Large Language Models (LLMs)—is built upon neural network principles.

This chapter explains how neural networks work conceptually before introducing Transformers in the next document.

---

# Why Linear Models Are Not Enough

In AF-003 we saw a simple mathematical model:

```
Prediction =
w₁ × x₁ +
w₂ × x₂ +
w₃ × x₃
```

This works well when the relationship between inputs and outputs is approximately linear.

However, most real-world problems are not.

Examples include:

- Recognizing faces
- Understanding language
- Detecting fraud
- Translating between languages

These problems involve highly complex patterns that cannot be represented by a single mathematical equation.

Neural networks solve this problem by stacking many simple mathematical operations together.

Instead of learning one equation, they learn thousands—or billions—of interconnected equations.

---

# The Biological Inspiration

The term **Neural Network** comes from biology.

The human brain consists of billions of neurons connected together.

A biological neuron:

- receives signals
- processes them
- decides whether to activate
- sends signals to other neurons

Artificial neural networks borrow this high-level idea.

However, they are **not simulations of the human brain**.

Instead, they are mathematical models inspired by this flow of information.

---

# Artificial Neuron

An artificial neuron performs four simple steps:

1. Receive input values
2. Multiply each input by its weight
3. Add the results together
4. Produce an output

Conceptually:

```
Inputs

↓

Multiply by Weights

↓

Add Together

↓

Activation

↓

Output
```

Although a single neuron is simple, combining millions or billions of them creates remarkably powerful models.

---

# Inputs

Every neuron begins by receiving information.

Examples:

House Price Model

```
House Size

Bedrooms

Age
```

Language Model

```
Token Embedding

↓

768 Numbers
```

Image Model

```
Pixel Values
```

These numerical values are called the **input vector**.

The neuron itself does not understand what these values represent.

It simply performs mathematical operations on them.

---

# Weights

Each input has an associated weight.

Weights determine how strongly each input influences the neuron's output.

For example:

```
House Size

↓

Weight = 0.8
```

```
Bedrooms

↓

Weight = 0.2
```

These weights were learned during training (AF-003).

During inference, the weights remain fixed.

They represent the model's learned knowledge.

> **Weights are the long-term memory of the model.**

---

# Weighted Sum

The neuron combines its inputs using a weighted sum.

Conceptually:

```
Output

=

(Input × Weight)

+

(Input × Weight)

+

(Input × Weight)
```

This is simply mathematics.

As models become larger, these calculations are performed using **matrix multiplication**, which we will explore later in this chapter.

---

# Bias

Most neurons also include an additional learnable value called the **bias**.

The bias allows a neuron to shift its output even when all inputs are zero.

Think of it as a calibration value that gives the neuron additional flexibility.

Conceptually:

```
Weighted Sum

+

Bias

↓

Activation
```

Biases are learned during training, just like weights.

---

# What's Next?

In the next section, we'll answer a key question:

> **If a neuron only performs simple math, how can billions of neurons understand language, images, or speech?**

The answer lies in **activation functions**, **layers**, and the idea that each layer transforms the current representation into a richer one.

That understanding will naturally lead us to matrix multiplication, embeddings, and ultimately the Transformer architecture.
