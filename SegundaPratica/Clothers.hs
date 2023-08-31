module Clothers where

main :: IO ()
main = do
    firstTrajes <- getLine
    secondTrajes <- getLine
    let arrayFirstTrajes = read firstTrajes :: [String]
    let arraySecondTrajes = read secondTrajes :: [String]
    let combinacao = repassTraje arrayFirstTrajes arraySecondTrajes
    putStrLn combinacao

repassTraje :: [String] -> [String] -> String
repassTraje [] trajes = ""
repassTraje (a : as) trajes = combineTrajes a trajes ++ repassTraje as trajes

combineTrajes :: String -> [String] -> String
combineTrajes roupa [] = ""
combineTrajes roupa (a : as) = roupa ++ " " ++ a ++ "\n" ++ combineTrajes roupa as
