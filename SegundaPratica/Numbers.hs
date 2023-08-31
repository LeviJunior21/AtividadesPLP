module Numbers where

main :: IO ()
main = do
    numbers <- getLine
    let arrayNumbers = []
    let pairsNumbers = searchPairs arrayNumbers
    let oddsNumbers = searchOdd arrayNumbers
    putStrLn ("Numeros impares em ordem crescente:")
    putStrLn (show pairsNumbers)
    putStrLn ("Numeros pares em ordem crescente:")
    putStrLn (show oddsNumbers)

searchPairs :: [Integer] -> [Integer]
searchPairs [] = []
searchPairs (a : as) =
    if (a `mod` 2) == 0
        then [a] ++ searchPairs as
        else searchPairs as

searchOdd :: [Integer] -> [Integer]
searchOdd [] = []
searchOdd (a : as) =
    if (a `mod` 2) == 1
        then [a] ++ searchOdd as
        else searchOdd as
