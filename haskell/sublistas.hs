subsCrescentes :: [Int] -> [[Int]]
subsCrescentes [] = []
subsCrescentes (x:xs) = reverse (subsCrescentesAux [x] xs)
  where
    subsCrescentesAux acumulada [] = [acumulada]
    subsCrescentesAux acumulada@(y:_) (z:zs)
      | z >= y = subsCrescentesAux (z:acumulada) zs
      | otherwise = acumulada : subsCrescentesAux [z] zs

listaSubs :: [Int] -> [[Int]]
listaSubs [] = []
listaSubs xs = filter (\sublist -> length sublist > 1) (subsCrescentes xs)

contaSubs:: [Int] -> Int
contaSubs sublists = length (listaSubs sublists)

main :: IO ()
main = do
  a <- readLn:: IO [Int]
  print (contaSubs a)
