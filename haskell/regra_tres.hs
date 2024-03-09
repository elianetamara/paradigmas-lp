regra_tres:: Double -> Double -> Double -> Double
regra_tres a b c = (b * c) / a

main:: IO()
main = do
a <- readLn:: IO Double
b <- readLn:: IO Double
c <- readLn:: IO Double
putStrLn ("O valor de x é: " ++ (show (regra_tres a b c)))



