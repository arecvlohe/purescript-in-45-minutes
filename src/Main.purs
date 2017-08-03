module Main where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Prelude hiding (id)
-- import Data.List (List(..), (:))

-- import Data.Types (Person(..), greet, printGreets, fighterGreet)
-- import Data.PatternMatching (someString, id, sum, sum', listSum, getFullName, getFullName')
-- import Data.FFI (handleParseFloat)
-- import Data.Records (whoAmI, showMe, whoIsRocky, showRocky, updateFighterWeightClass)


main :: ∀ e. Eff (console :: CONSOLE | e) Unit
main = do
  log "Hello, sailor"
  {-
  log "Print Adrian using"
  log $ greet ADRIAN <> "!"
  
  log "Print a bunch of yo adrians"
  log $ printGreets [ROCKY, ADRIAN, ROCKY, ADRIAN, ROCKY, ADRIAN]
  
  log "Print Rocky's name"
  log $ fighterGreet { name: "Rocky Balboa", age: 50 } <> "."
  
  log "Let's do some pattern matching"
  
  log "Wildcard Pattern"
  log $ someString "Something"
  
  log "Variable Pattern"
  log $ id "ID"
    
  log "Array Pattern"
  log $ show $ sum [10, 10]

  log "Record Pattern"
  log $ getFullName { firstName: "Adam", lastName: "Recvlohe", age: 30 }

  log "Named Pattern"
  log $ getFullName' { firstName: "Adam", lastName: "Recvlohe", age: 30 }

  log "Guard Pattern"
  log $ show $ sum' [0, 1]

  log "Pattern Guard Pattern"
  log $ show $ listSum (1 : 2 : 3 : Nil)

  log "Foreign Function Interface"
  log $ show $ handleParseFloat "45"
  log $ show $ handleParseFloat "asdfasdf.45"

  log $ showMe whoAmI
  log $ showRocky whoIsRocky
  log $ updateFighterWeightClass "heavyweight" whoIsRocky
  -}
  
