filterVelocidades :: (Int -> Bool) -> [Int] -> [Int]
filterVelocidades condicao velocidades = [v | v <- velocidades, condicao v]

countAbaixo :: [Int] -> Int
countAbaixo velocidades = length (filterVelocidades (<= 80) velocidades)

countTolerancia :: [Int] -> Int
countTolerancia velocidades = length (filterVelocidades (\v -> v > 80 && v <= 88) velocidades)

countMulta :: [Int] -> Int
countMulta velocidades = length (filterVelocidades (> 88) velocidades)

relVelocidade :: [Int] -> String
relVelocidade velocidades =
  "=== Relatorio ===\n" ++ show (countAbaixo velocidades) ++ " limite\n" ++
  show (countTolerancia velocidades) ++ " tolerancia\n" ++
  show (countMulta velocidades) ++ " multa\n"

main :: IO ()
main = do
  putStrLn (relVelocidade [55, 60, 80, 81, 88, 90])
  -- ajustar entrada
