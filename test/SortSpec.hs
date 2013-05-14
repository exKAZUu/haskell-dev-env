module SortSpec where

import Util.Sort
import Test.Hspec

spec :: Spec
spec = do
  describe "quicksort" $ do
    it "sorts [1,0]" $
      quicksort [1,0] `shouldBe` [0,1]
