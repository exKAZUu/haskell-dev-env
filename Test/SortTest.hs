module SortTest where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit
import Util.Sort

tests2 = test [ "test1" ~: "quicksort [0]," ~: [0] ~=? (quicksort [0]),
               "test2" ~: "quicksort [1,0,2]," ~: [0,1,2] ~=? (quicksort [1,0,2]) ]

import qualified Distribution.TestSuite as Cabal
import qualified Distribution.TestSuite.HUnit as CabalHUnit

tests = map (\(x,y) -> CabalHUnit.test x y) [("Login tests", test2)]

-- test1 = TestCase (assertEqual "quicksort [0]," [0] (quicksort [0]))
-- test2 = TestCase (assertEqual "quicksort [1,0,2]," [0,1,2] (quicksort [1,0,2]))
-- tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]
