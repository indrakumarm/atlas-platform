# From Neural Networks to Transformers

So far, we have learned that a neural network consists of many layers.

Each layer receives a vector, transforms it using its learned weights, and produces a new vector.

```
Input Vector
      │
      ▼
Layer 1
      │
      ▼
Better Representation
      │
      ▼
Layer 2
      │
      ▼
Better Representation
      │
      ▼
Layer 3
      │
      ▼
Prediction
```

This approach works well for many machine learning problems.

However, language introduces a unique challenge.

---

# The Challenge with Language

Consider the following sentence:

```
The animal didn't cross the street because it was too tired.
```

What does **"it"** refer to?

Most humans immediately understand that **"it"** refers to **the animal**.

Now consider:

```
The animal didn't cross the street because it was too wide.
```

This time, **"it"** refers to **the street**.

Although the sentence structure is similar, the meaning changes depending on the surrounding words.

Traditional neural networks struggle to capture these long-range relationships efficiently.

---

# The Idea Behind Transformers

Transformers were introduced to solve this problem.

Instead of processing information sequentially, a Transformer allows every word to examine the other words in the sentence and determine which ones are most relevant.

Conceptually:

```
Sentence

↓

Word Representations

↓

Which words are important?

↓

Build better representations

↓

Next Layer
```

This process is called **Attention**.

Attention allows the model to focus on the most relevant parts of the input before producing the next representation.

---

# Transformers Are Still Neural Networks

Although Transformers introduced a new architecture, they are still neural networks.

They still consist of multiple layers.

Each layer:

- Receives vectors
- Performs mathematical operations
- Produces richer vectors
- Passes those vectors to the next layer

The key innovation is **how** each layer decides which information should influence the next representation.

---

# Why This Matters for AI Infrastructure

Modern Large Language Models such as GPT, Llama, Gemma, Mistral, and Qwen are all based on the Transformer architecture.

Despite their impressive capabilities, every Transformer layer ultimately performs a very large number of mathematical operations, especially matrix multiplications.

Executing these operations efficiently requires specialized hardware.

This is why GPUs have become the foundation of modern AI infrastructure.

The next module shifts our focus from *how models think* to *how hardware executes those computations efficiently*.

---

# Key Takeaways

After completing this chapter, you should understand:

- A neural network consists of layers of neurons.
- Each neuron performs a simple mathematical computation.
- Different neurons learn different features during training.
- Each layer transforms the current representation into a richer representation.
- The outputs of layers are vectors, not new weights.
- During inference, weights remain fixed while vectors evolve.
- Activation functions allow neural networks to learn complex, non-linear relationships.
- Transformers are specialized neural networks designed to better understand relationships within sequences such as natural language.
- GPUs accelerate the large-scale mathematical operations performed inside Transformer models.

---

## Next Module

**GF-001 – GPU Fundamentals**

In the next module, we will shift from AI concepts to computer architecture and answer questions such as:

- Why are GPUs much faster than CPUs for AI workloads?
- What are CUDA Cores and Tensor Cores?
- What is VRAM?
- Why do LLMs require so much GPU memory?
- Why are matrix multiplications the dominant operation during inference?
- How do modern inference engines such as vLLM and TensorRT exploit GPU hardware?
