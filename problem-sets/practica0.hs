-- Ejercicio 1
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

sFibonacci :: Int -> [Int]
sFibonacci x 
	| x < 0 = []
	| otherwise = [fibonacci i | i <- [0..x]]

-- Ejercicio 2
quitaElemento :: (Eq a) => [a] -> a -> [a]
quitaElemento lista elemento = [e | e <- lista, e /= elemento]

-- Ejercicio 3
divisoresPropios :: Int -> [Int]
divisoresPropios n = [i | i <- [1..(n-1)], n `mod` i == 0]

