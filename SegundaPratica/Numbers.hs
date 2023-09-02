main :: IO()
main = do
    input <- getLine
    let numbers = map read (words input) :: [Integer]
    let sortNumbers = quickSort numbers
    let oddNumbers = searchOdds sortNumbers
    let pairNumbers = searchPairs sortNumbers 
    putStrLn "Numeros impares em ordem crescente:"
    putStrLn (show oddNumbers)
    putStrLn "Numeros pares em ordem decrescente:"
    putStrLn (show (descendingList pairNumbers))
    
searchPairs :: [Integer] -> [Integer]
searchPairs [] = []
searchPairs (a:as) = 
    if (a `mod` 2) == 0 then [a] ++ searchPairs as
    else searchPairs as

searchOdds :: [Integer] -> [Integer]
searchOdds [] = []
searchOdds (a:as) = 
    if (a `mod` 2) == 1 then [a] ++ searchOdds as
    else searchOdds as

descendingList :: [Integer] -> [Integer]
descendingList [] = []
descendingList (a:as) = descendingList as ++ [a]

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (h:t) = 
    let menores = quickSort [a | a <- t, a <= h] 
        maiores = quickSort [a | a <- t, a > h] 
    in menores ++ [h] ++ maiores
