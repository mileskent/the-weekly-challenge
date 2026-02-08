# Example 1, ans: 16
matrix1 ← 3‿4 ⥊ ⟨
  4, 4, 4, 4,
  10, 0, 0, 0,
  2, 2, 2, 9
⟩

# Example 2, ans: 10
matrix2 ← 3‿2 ⥊ ⟨
  1, 5,
  7, 3,
  3, 5
⟩

# Example 3, ans: 6
matrix3 ← 2‿3 ⥊ ⟨
  1, 2, 3,
  3, 2, 1
⟩

# Example 4, ans: 17
matrix4 ← 3‿3 ⥊ ⟨
  2, 8, 7,
  7, 1, 3,
  1, 9, 5
⟩

# Example 5, ans: 100
matrix5 ← 4‿3 ⥊ ⟨
  10, 20, 30,
  5, 5, 5,
  0, 100, 0,
  25, 25, 25
⟩

# cellwise, fold addition, then fold max
Solution ← ⌈´+´˘
