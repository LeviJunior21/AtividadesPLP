main :: IO()
main = do
    input <- getLine
    let somaDivisores = buscaSomaDivisores 1 (read input :: Int)
    let categoria = verificaCategoria somaDivisores (read input :: Int)
    putStrLn (show categoria)

buscaSomaDivisores :: Int -> Int -> Int
buscaSomaDivisores x y =
    if y <= 0 then -1
    else if (y == 1) then 1
    else if (x >= y) then 0
    else if (y `mod` x) == 0 then x + buscaSomaDivisores (x + 1) y
    else buscaSomaDivisores (x + 1) y

verificaCategoria  :: Int -> Int -> String
verificaCategoria somaDivisores entrada =
    if somaDivisores < 0 then "Numero Invalido"
    else if somaDivisores == entrada then "Numero Perfeito"
    else if somaDivisores > entrada then "Numero Abundante"
    else "Numero Deficiente"
