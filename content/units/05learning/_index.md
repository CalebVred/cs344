---
title: "Unit 5: Learning and Classification"
date: 2022-02-07
weight: 5
---

In this unit we extend our modeling skills to encompass classification models, and start to build the tools that will let us represent complex functions by using hidden layers. Both of these objectives require us to learn about *nonlinear* operations. We'll focus on the two most commonly used ones: the *softmax* operator (which converts scores to probabilities) and the *rectifier* ("ReLU", which clips negative values).

Students who complete this unit will demonstrate that they can:

- Describe the difference between a metric and a loss function.
- Describe and compute cross-entropy loss
- Explain the purpose and mathematical properties of the softmax operation.
- Explain the role of nonlinearities in a neural network (e.g., why they are used between linear layers)
- Implement a logistic regression model using basic numerical computing primitives

<!-- - Activities
	- some variation on Learning Proportions lab? ^^bandit learning^^: how likely is each arm to give a payout? -->

## Preparation

The fastai course videos are a bit disorganized here, sorry about that.

- Watch the Lab 4 [walk-through video](https://calvincollege.sharepoint.com/:f:/s/Section_81629/EiZcXdth0VZMhjz4S_69w0oByq-i_tuvqJMm1VgDMjNtJw?e=EC58DP) if you have not yet.
- Read {{< fastbook num="5" nbname="05_pet_breeds.ipynb" >}}.
  - skip (or skim) Presizing and the LR finder
  - skim "discriminative" rates (which would better be called "layer-dependent learning rates")
  - Watch {{< fastvideo num="4" >}} (starting about 1 hr in) and {{<fastvideo num="6">}} (first half hour) for this material.
- *Recommended* skim {{<fastbook num="17" nbname="17_foundations.ipynb">}}.
  - This should reinforce what we've been studying about how linear regression works and how Tensors work, and give you a preview of how we'll extend it to a full neural net.

## Class Meetings

### Monday

- Work session for Homework 4

### Wednesday

- Discussion summary (come prepared to contribute)
- Classification ([slides](/slides/w5/w5-classification.html))
  - intuition of scores: Elo
  - cross-entropy
    - intuition: maximize prob given to the correct answer
      - illustration: `plot_top_losses` output: probs and losess
    - math: sum the *log of* the prob given to the right answer
  - how do we make probabilities? softmax (and its relative the sigmoid)
  - where do the "right" scores come from?
    - In linear regression we were given the right scores.
    - In classification, we have to learn the scores from data. (hence Elo scores)

### Friday

- Discussion presentation
- Nonlinearities

### Homework

- Softmax fundamentals
- Extend linear regression to logistic regression