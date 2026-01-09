test :: [Integer] -> IO ()
test xs = do
    putStrLn (show xs ++ " -> " ++ show (solution xs))

deltas :: [Integer] -> [Integer]
deltas xs = zipWith (-) (tail xs) xs

solution :: [Integer] -> Bool
-- four blanks for geq 3 apparently
solution xs@(_:_:_:_) =
    let (increasing, decreasing) = span (>0) (deltas xs)
    in not (null increasing)
        && not (null decreasing)
        && all (<0) decreasing
solution _ = False
    
main :: IO ()
main = do
    test []
    test [1]
    test [1, 2]
    test [1..5]
    test [0, 2, 4, 6, 4, 2, 0]
    test [5, 4, 3, 2, 1]
    test [1, 3, 5, 5, 4, 2]
    test [1, 3, 2]
