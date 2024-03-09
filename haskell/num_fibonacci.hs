fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

somaDig:: Int -> Int
somaDig num = if num == 0 then 0 else ((mod num 10) + somaDig (div num 10))

numFib:: Int -> Int -> Int
numFib n nFib
    | somaDig fibonacci == n = fibonacci
    | otherwise = numFib n (nFib+1)
    where fibonacci = (fib nFib)

main :: IO()
main = do
n <- readLn :: IO Int
print (numFib n 0)