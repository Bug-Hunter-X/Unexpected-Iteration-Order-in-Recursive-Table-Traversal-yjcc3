# Lua Recursive Table Traversal and Iteration Order

This repository demonstrates a potential issue in Lua related to the order of iteration when using `pairs` to traverse nested tables recursively.  Lua's `pairs` iterator does not guarantee a specific order, which can lead to unexpected results if the code relies on a particular iteration sequence.  The example provided shows a recursive function that may behave differently depending on the order in which `pairs` iterates over table elements.

## Problem

The `bug.lua` file contains a Lua function that recursively traverses a nested table.  The function's behavior is dependent on the order of iteration within the nested tables. Since `pairs` iteration order is not defined, the function's output can be unpredictable.

## Solution

The `bugSolution.lua` file offers potential solutions to mitigate this issue. These could involve:

* **Explicit Ordering:** If ordering is crucial, explicitly manage the keys in your table (e.g., using arrays instead of tables with string keys).
* **Sorted Iteration:** If you need a consistent order, utilize a sorted iteration approach (e.g., using `ipairs` for arrays or sorting the keys before iteration).
* **Order-Agnostic Logic:**  Rework the algorithm to be independent of iteration order if possible.

## How to Run

1.  Clone this repository.
2.  Navigate to the repository's directory.
3.  Run the Lua scripts using a Lua interpreter: `lua bug.lua` and `lua bugSolution.lua`

This example highlights the importance of understanding Lua's iteration behavior when working with nested tables and recursive functions. Always consider the potential impact of undefined iteration order and choose appropriate techniques to manage it based on your specific requirements.