module Test.Main where

import Prelude

import Control.Monad.Eff (Eff)
import Data.FFI (handleParseFloat)
import Test.QuickCheck (class Arbitrary, (/==), (===))
import Test.QuickCheck.Data.AlphaNumString (AlphaNumString(..))
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.QuickCheck (QCRunnerEffects, quickCheck)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (run)

main :: Eff (QCRunnerEffects ()) Unit
main = run [consoleReporter] do
  describe "handleParseFloat" do
    it "should parse a valid float" $
      handleParseFloat "45" `shouldEqual` 45.0 
    it "should parse a float mixed with text" $
      handleParseFloat "45adfasdfaf" `shouldEqual` 45.0
    it "should return 0.0 for unparseable string" $
      handleParseFloat "adafdsaf45" `shouldEqual` 0.0
    -- it "property based testing" $
    --   quickCheck (Arbitrary AlphaNumString) handleParseFloat
