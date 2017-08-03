module Data.Records where

import Prelude
import Data.Int (decimal, toStringAs)

{-
  RECORD LITERALS: {}
-}


type Person = Record ( name :: String, age :: Int )
-- type Person = { name :: String, age :: Int }

whoAmI :: Person
whoAmI = { name: "Adam", age: 30 }

showMe :: Person -> String
showMe { name, age } | name == "Adam" =
  name <> " is " <> toStringAs decimal age <> " years old"
showMe _ = "Who are you?"

{-
  EXTENSIBLE RECORDS
-}

type Base details = { name :: String, age :: Int | details }
type Fighter = Base ( weight :: Int, height :: Int, weightClass :: String )

whoIsRocky :: Fighter
whoIsRocky = { name: "Rocky Balboa", age: 30, weight: 200, height: 62, weightClass: "welterweight" }

showRocky :: Fighter -> String
showRocky { name, weightClass } =
  name <> " is in the " <> weightClass <> " class."


{-
  RECORD UPDATE
-}

updateFighterWeightClass :: String -> Fighter -> String
updateFighterWeightClass class' fighter =
  showRocky $ fighter { weightClass = class' }
  
