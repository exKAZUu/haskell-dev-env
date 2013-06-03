module Util.Sort (quicksort) where

{-| Sorting a list using the quick sort algorithm.

>>> quicksort []
[]
>>> quicksort [2,3,1,4]
[1,2,3,4]
>>> quicksort [1,2,3,4,5] == quicksort [5,4,3,2,1]
True
-}

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x]
  in quicksort smallerOrEqual ++ [x] ++ quicksort larger
