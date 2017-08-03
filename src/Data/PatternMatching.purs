module Data.PatternMatching (
  someString,
  id,
  sum,
  sum',
  listSum,
  getFullName,
  getFullName'
) where

import Prelude

import Data.List ((:))
import Data.List.Types (List(..))

{-
  WILDCARD PATTERN: _
  A wildcard pattern matches any pattern and brings nothing into scope.
  If you want to match a pattern but not use it as a variable, this is what you would use.
-}

someString :: forall a. a -> String
someString _ =
  "Nothing to see here, move along!"

{-
  VARIABLE PATTERN: any variable
  Matches a pattern with a variable and brings that variable into scope
-}

id :: forall a. a -> a
id x = x

{-
  ARRAY PATTERN: []
  Matches an array pattern and brings variables into scope
-}

sum :: Array Int -> Int
sum [a, b] =
  a + b
sum _ = 0

{-
  RECORD PATTERN: {}
  Matches values in a record and pulls those values into scope
-}

type Person = { firstName :: String, lastName :: String, age :: Int }

getFullName :: Person -> String
getFullName { firstName: f, lastName: l } =
  f <> " " <> l


{-
  NAMED PATTERN : @
  Matches a pattern to a variable and brings it into scope
-}

getFullName' :: Person -> String
getFullName' person@{ firstName, lastName } =
  person.firstName <> " " <> person.lastName


{-
  GUARD PATTERN: |
  Makes sure for the guards to pass before executing the function
-}

sum' :: Array Int -> Int
sum' [a, b] | a > 1 && b > 2 =
  a + b
sum' _ = 0

{-
  PATTERN GUARD PATTERN: 
  Makes sure a pattern guard exists and brings variables into scope
-}

listSum :: List Int -> Int
listSum list | (a : b : c : Nil) <- list =
  a + b + c
listSum _ = 0
