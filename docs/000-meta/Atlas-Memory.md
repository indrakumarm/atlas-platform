# Atlas Memory

Last Updated:
2026-08-01

Current Version:
v0.1.0

---

## Vision

Atlas is a long-term project to learn, build, and operate a production-grade AI inference platform.

The repository should evolve into an engineering handbook rather than a collection of notes.

Primary goals:

- Learn AI Infrastructure from first principles.
- Build a production-ready inference platform.
- Strengthen AI Infrastructure Engineering skills.
- Create a portfolio suitable for senior/principal AI Infrastructure roles.
- Potentially evolve Atlas into a commercial inference platform.

---

## Current Module

Module 00

AI Foundations

Current Document:

AF-003 Training Fundamentals

Status:

In Progress

---

## Learning Progress

Completed:

✓ AI Landscape

✓ LLM Lifecycle

Training concepts completed:

✓ Why Training Exists

✓ Mathematical Model

✓ Features

✓ Weights

✓ Forward Pass

✓ Prediction

✓ Loss

✓ Gradient (Conceptual)

✓ Backpropagation (Conceptual)

✓ Optimizer (Conceptual)

✓ Learning Rate (Conceptual)

✓ Complete Training Loop

---

## Remaining Topics for AF-003

The following topics are intentionally pending.

- Dataset
- Epoch
- Batch
- Mini Batch
- Gradient Descent
- SGD
- Adam Optimizer
- Why Matrix Multiplication
- Tensors
- Why GPUs are required for training
- Transition into GPU Fundamentals

Do not repeat previously completed concepts unless redesigning documentation.

---

## Next Module

AF-004 Neural Networks

Then:

AF-005 Transformers

AF-006 Attention

AF-007 Tokenization

AF-008 Embeddings

Only after AI Foundations is complete should GPU Fundamentals begin.

---

## Repository Principles

Every session should produce:

- Learning
- Documentation
- One Git Commit

Every architectural decision:

→ ADR

Every new term:

→ Glossary

Every unanswered question:

→ Questions.md

---

## Teaching Philosophy

Atlas teaches from first principles.

Every concept should answer:

1. What problem does it solve?
2. Why was it invented?
3. How does it work?
4. Why should an AI Infrastructure Engineer care?

Avoid introducing jargon before the underlying problem is understood.

---

## Current Stopping Point

The conceptual training workflow is complete.

The next learning session should begin with:

Dataset → Batch → Mini Batch → Epoch

These concepts naturally lead into:

Gradient Descent

↓

Matrix Multiplication

↓

Tensors

↓

Why GPUs

↓

CUDA

No need to revisit previous training concepts unless improving documentation.
