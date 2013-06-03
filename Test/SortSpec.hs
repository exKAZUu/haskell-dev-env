module SortSpec where

import Data.List
import Util.Sort
import Test.Hspec
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck hiding ((.&.))

spec :: Spec
spec = do
  describe "quicksort" $ do
    it "sorts [0]" $
      quicksort [0] `shouldBe` [0]
    it "sorts [1,0,2]" $
      quicksort [1,0,2] `shouldBe` [0,1,2]
    prop "works as well as " $ \xs ->
      quicksort xs == sort (xs :: [Int])
    prop "sorts lists many times" $ \xs ->
      quicksort (quicksort xs) == quicksort (xs :: [Int])
