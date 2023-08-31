main :: IO()
main = do
    input <- getLine
    let dobroValor = dobro (read input :: Int)
    putStrLn (show dobroValor)

dobro :: Int -> Int
dobro numero = 2 * numero
