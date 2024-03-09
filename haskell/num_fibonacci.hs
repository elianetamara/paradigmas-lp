fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

numFibAux:: Int -> Int -> Int
numFibAux n nFib
 | nFib
where stringFib = show nFib

numFib:: Int -> Int
numFib n = numFibAux n (fib n)

main :: IO()
main = do
n <- readLn :: IO Int
print (numFib n)