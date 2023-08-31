main :: IO()
main = do
    input <- getLine
    let resultado = sequencia 2 1 (read input :: Int)
    putStrLn (show resultado)

sequencia :: Int -> Int -> Int -> Int
sequencia termoInicial indexInicial indexFinal = 
    if indexInicial < indexFinal 
        then sequencia (2 * termoInicial + 2) (indexInicial + 1) indexFinal
    else termoInicial
