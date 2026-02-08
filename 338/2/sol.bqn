# sample inputs, ans: 6
arr1 ← 4‿5‿7
arr2 ← 9‿1‿3‿4

# Fold-Max ⌈´
# Fold-AbsDelta-Foreach |-˜´¨
# Pairs ⥊𝕨≍⌜𝕩
MaxDistance ← {⌈´ ∘ |-˜´¨ ∘ ⥊𝕨≍⌜𝕩}
arr1 MaxDistance arr2 
