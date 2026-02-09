sol :: Int -> String -> String
sol width str =
    let n = width - length str
        lpad = n `div` 2
        rpad = n - lpad
    in replicate lpad '*' ++ str ++ replicate rpad '*'

main :: IO ()
main = do
    putStrLn (sol 5 "Hi")
    putStrLn (sol 10 "Code")
    putStrLn (sol 4 "Perl")
    putStrLn (sol 5 "")
