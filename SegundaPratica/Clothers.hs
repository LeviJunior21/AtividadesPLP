main :: IO()
main = do
    firstTrajes <- getLine
    secondTrajes <- getLine
    let arrayFirstTrajes = read firstTrajes :: [String]
    let arraySecondTrajes = read secondTrajes :: [String]
    let conbine = repassTraje arrayFirstTrajes arraySecondTrajes
    putStrLn conbine
    
repassTraje :: [String] -> [String] -> String
repassTraje [] trajes = ""
repassTraje (a:as) trajes = combineTrajes a trajes ++ repassTraje as trajes

combineTrajes :: String -> [String] -> String
combineTrajes clothe [] = ""
combineTrajes clothe (a:as) = clothe ++ " " ++ a ++ "\n" ++ combineTrajes clothe as