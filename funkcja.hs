myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ acc []     = acc
myFoldr f acc (x:xs) = f x (myFoldr f acc xs)
reverseList :: [a] -> [a]
reverseList = myFoldr (\x acc -> acc ++ [x]) []
main :: IO ()
main = print (reverseList [1, 2, 3, 4, 5]) -- Wynik: [5,4,3,2,1]
