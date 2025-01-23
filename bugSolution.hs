The corrected code handles both the `Left` and `Right` cases using an explicit `case` statement.  This avoids the runtime error and makes the code's logic clearer. 

```haskell
main :: IO ()
main = do
  let result = eitherFunc 10
  case result of
    Left err -> putStrLn $ "Error: " ++ show err
    Right value -> putStrLn $ "Result: " ++ show value

--Example function that might return an error
eitherFunc :: Int -> Either String Int
eitherFunc x = if x > 5 then Right x else Left "Value too small" 
```