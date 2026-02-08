Gcd ← {𝕨{𝕩=0?𝕨;𝕩𝕊𝕩|𝕨}𝕩}                         # Find GCD of Pair
Cp ← (⥊∘(⋈⌜)˜)1+↕                               # All Cart Prod from Range
Red ← ⊢÷Gcd´¨                                   # All Unique Fracs
FracFmt ← {2↓∾{", "∾(•Fmt ⊑𝕩)∾"/"∾•Fmt 1⊑𝕩}¨𝕩}  # Format Cart Prod as List of Fracs
Solution ← FracFmt ∘ ⍷ ∘ Red ∘ Cp               # Final Composed Solution
