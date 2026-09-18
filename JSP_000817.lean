import Mathlib
import Erdos984

/-!
# JSP-000817 / Erdős Problem #984

Theorem statement and bridge for Erdős Problem #984:
Can integers be two-colored so that every monochromatic arithmetic progression
has length bounded by a very slowly growing function of its starting point?

Informal author: Zach Hunter
Formal authors: OpenAI Codex, GPT-5.6 Sol
-/

theorem jsp_000817_solved : (∃ color : ℕ → Bool, ∀ ε : ℝ, 0 < ε →
  ∃ A : ℝ, 0 < A ∧ ∀ a d k : ℕ,
    0 < a → 0 < d → Erdos984.IsMonochromaticAP color a d k →
      (k : ℝ) ≤ A * (a : ℝ) ^ ε) :=
  Erdos984.erdos_984

#print axioms jsp_000817_solved
-- 'jsp_000817_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
