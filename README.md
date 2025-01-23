# Haskell Either Monad Pattern Matching Error

This repository demonstrates a common error in Haskell code involving pattern matching on the `Either` monad.  Specifically, the code fails to handle the `Left` case, leading to runtime errors if the result is a `Left` value. This highlights the importance of comprehensive pattern matching and the use of compiler warnings to catch such errors.

## How to Reproduce

1. Clone the repository.
2. Compile `bug.hs` using `ghc bug.hs`. (The code will compile but will throw an exception when executed)
3. Run the compiled executable. You will see a runtime error.
4. Now compile `bugSolution.hs` which contains the corrected code.
5. Run the corrected code. It should run without errors. 

## Lesson Learned

Always handle both the `Left` and `Right` cases when pattern matching on `Either` values. Using the `-Wall` flag with your compiler will help prevent this type of error. Using a case statement is generally better practice for clarity.