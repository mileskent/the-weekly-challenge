insertEvery3FromBack :: Char -> String -> String
insertEvery3FromBack char input = reverse (insertEvery3 char (reverse input))
  where
    insertEvery3 _ [] = []
    insertEvery3 c (x1:x2:x3:xs@(_:_)) = x1 : x2 : x3 : c : insertEvery3 c xs
    insertEvery3 _ remainder = remainder

solution :: Int -> String
solution n = insertEvery3FromBack ',' (show n)

test :: Int -> IO ()
test num = do
    let str = solution num
    putStrLn $ show num
    putStrLn str
    putStrLn ""

main :: IO ()
main = do
    test 123
    test 1234
    test 1000000
    test 1
    test 12345
