# Formalization of JSP-000817 (Erdős Problem #984)

## Problem Overview

**Catalog ID:** [JSP-000817](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000817)  
**Erdős Problem:** [#984](https://www.erdosproblems.com/984)  
**Mathematical Area:** Arithmetic progressions / Additive combinatorics  

### Problem Statement

Can integers be two-colored so that every monochromatic arithmetic progression has length bounded by a very slowly growing function of its starting point?
Specifically, does there exist a two-coloring of $\mathbb{N}$ such that for every $\varepsilon > 0$, there is a constant $A_\varepsilon > 0$ where every monochromatic arithmetic progression beginning at $a$ with step $d > 0$ and length $k$ satisfies:
$$k \le A_\varepsilon a^\varepsilon$$

### Resolution

Affirmatively resolved by Zach Hunter.

## Formalization Details

- **Bridge File:** `JSP_000817.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000817_solved : (∃ color : ℕ → Bool, ∀ ε : ℝ, 0 < ε →
    ∃ A : ℝ, 0 < A ∧ ∀ a d k : ℕ,
      0 < a → 0 < d → Erdos984.IsMonochromaticAP color a d k →
        (k : ℝ) ≤ A * (a : ℝ) ^ ε) :=
    Erdos984.erdos_984
  ```
- **Axioms Check:**
  `#print axioms jsp_000817_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Zach Hunter
- **Formal Authors:** Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs`.
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
