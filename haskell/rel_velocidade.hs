listAbaixo :: [Int] -> [Int]
listAbaixo velocidades = [v | v <- velocidades, v <= 80]
  
listTolerancia :: [Int] -> [Int]
listTolerancia velocidades = [v | v <- velocidades, v > 80 && v <= 88]
  
listMulta :: [Int] -> [Int]
listMulta velocidades = [v | v <- velocidades, v > 88]


relVelocidade :: [Int] -> String
relVelocidade velocidades =
  "=== Relatorio ===\n" ++ show (length (listAbaixo velocidades)) ++ " limite\n" ++
  show (length (listTolerancia velocidades)) ++ " tolerancia\n" ++
  show (length (listMulta velocidades)) ++ " multa\n"

main :: IO ()
main = do
  putStrLn (relVelocidade [55, 60, 80, 81, 88, 90])
