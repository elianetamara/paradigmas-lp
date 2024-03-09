dobro:: Int -> Int
dobro num = num * 2

main:: IO()
main = do
input <- readLn:: IO Int
print (dobro input)