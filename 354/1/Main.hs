module Main where

import Data.List (sort)

minAbsDiffPairs :: [Int] -> [[Int]]
minAbsDiffPairs [] = []
minAbsDiffPairs [_] = []
minAbsDiffPairs ints = 
    let sorted = sort ints
        pairs = zip sorted (tail sorted)
        absDiffs = [abs(b - a) | (a, b) <- pairs]
        minAbsDiff = minimum absDiffs
    in [[a, b] | (a, b) <- pairs, b - a == minAbsDiff]

main :: IO ()
main = do
    let inputs = [ [4, 2, 1, 3]
                , [10, 100, 20, 30]
                , [-5, -2, 0, 3]
                , [8, 1, 15, 3]
                , [12, 5, 9, 1, 15]
                ]
    mapM_ (\row -> do
        putStr "Input: "
        print row
        putStr "Output: "
        print (minAbsDiffPairs row)
        putStrLn "" 
        ) inputs