# Task 2: Shift Grid
**Monday, Dec 29, 2025**

You are given an $m \times n$ matrix and an integer $k > 0$. 

Write a script to shift the given matrix $k$ times.

## Shifting Rules
Each shift follows these rules:

1.  **Rule 1:** Element at `grid[i][j]` moves to `grid[i][j + 1]`. Every element moves one step to the right within its row.
2.  **Rule 2:** Element at `grid[i][n - 1]` moves to `grid[i + 1][0]`. Elements in the last column of row $i$ wrap to the first column of the next row ($i+1$).
3.  **Rule 3:** Element at `grid[m - 1][n - 1]` moves to `grid[0][0]`. The bottom-right corner wraps to the top-left corner.


## Example 1

**Input:** - `@matrix = ([1, 2, 3], [4, 5, 6], [7, 8, 9])`
- `$k = 1`

**Output:** - `([9, 1, 2], [3, 4, 5], [6, 7, 8])`

### Step-by-Step Transformation:
* **Rule 1 (Internal row shift):**
    * (0,0): 1 → `new_grid[0][1]`
    * (0,1): 2 → `new_grid[0][2]`
    * (1,0): 4 → `new_grid[1][1]`
    * (1,1): 5 → `new_grid[1][2]`
    * (2,0): 7 → `new_grid[2][1]`
    * (2,1): 8 → `new_grid[2][2]`
* **Rule 2 (Column wrap):**
    * (0,2): 3 → `new_grid[1][0]`
    * (1,2): 6 → `new_grid[2][0]`
* **Rule 3 (Bottom-right wrap):**
    * (2,2): 9 → `new_grid[0][0]`

---

## Example 2

**Input:** - `@matrix = ([10, 20], [30, 40])`
- `$k = 1`

**Output:** - `([40, 10], [20, 30])`

### Step-by-Step Transformation:
* **Rule 1:** 10 → (0,1); 30 → (1,1)
* **Rule 2:** 20 → (1,0)
* **Rule 3:** 40 → (0,0)

---

## Example 3

**Input:** - `@matrix = ([1, 2], [3, 4], [5, 6])`
- `$k = 1`

**Output:** - `([6, 1], [2, 3], [4, 5])`

---

## Example 4

**Input:** - `@matrix = ([1, 2, 3], [4, 5, 6])`
- `$k = 5`

**Output:** - `([2, 3, 4], [5, 6, 1])`

### Iteration Log:
* **Shift 1:** `[[6, 1, 2], [3, 4, 5]]`
* **Shift 2:** `[[5, 6, 1], [2, 3, 4]]`
* **Shift 3:** `[[4, 5, 6], [1, 2, 3]]`
* **Shift 4:** `[[3, 4, 5], [6, 1, 2]]`
* **Shift 5:** `[[2, 3, 4], [5, 6, 1]]`

---

## Example 5 (Special Case: Single Row)

**Input:** - `@matrix = ([1, 2, 3, 4])`
- `$k = 1`

**Output:** - `([4, 1, 2, 3])`

**Note:** In a $1 \times n$ matrix, Rule 2 is never triggered because $i$ is never less than $m-1$. Elements follow Rule 1 until the final element, which follows Rule 3.