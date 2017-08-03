module Data.Types where

import Prelude ((#), (<>))
import Data.Array (foldl, snoc)
import Data.String (joinWith)
import Data.Int (decimal, toStringAs)


{-
  PRIMITIVE TYPES: Int, Number, String, Char, Boolean
  Number, String, Boolean work the same as in JavaScript.
  Int works differrently with operators in order for an Int to be returned.
  
  Examples:
  Int: 4
  Number: 4.0
  String: "Yo, Adrian!"
  Boolean: true
-}

{- 
  TYPES: Arrays, Lists, Records
  Arrays work the same as in JavaScript but should have all the same type and are immutable.
  Lists are immutable linked lists.
  Records look and work the same as JavaScript objects and are also immutable.
  
  Examples:
  Array: [1, 2, 3, 4]
  List: (1 : 2 : 3 : 4 : Nil)
  Record: { name: "Rocky", wife: "Adrian", favoritePhrase: "Yo, Adrian!" }
-}

{-
  DYNAMIC TYPES: Tagged Union, Newtypes, Polymorphic, and Synonyms
  A tagged union allows you to create a data type in a more declarative way.
  Newtypes do the same but have one contructor and one argument.
  Polymorphic types just means that types can transform based on the arguments passed to a fuction.
  Synonyms allow you to define your records/functions/etc. in a type.
  
  Examples:
  Tagged Union: data Msg = Increment | Decrement
  Newtype: newtype Message = Message str
  Polymorphic: identity x = x
  Synonyms: type Data = { name :: String, wife :: String, favoritePhrase :: String  }
-}

-- LETS CREATE SOME FUNCTIONS WITH THESE

data Person = ROCKY | ADRIAN -- a tagged union

type Fighter = { name :: String, age :: Int } -- a type

greet :: Person -> String
greet person =
  case person of
    ROCKY -> "Yo, Adrian"
    ADRIAN -> "Rocky"
      
repeatGreets :: Array Person -> Array String
repeatGreets arr =
  foldl (\acc curr -> snoc acc (greet curr)) [] arr -- snoc is the reverse of cons
 
printGreets :: Array Person -> String
printGreets arr =
  repeatGreets arr # -- # works the same as chaining in JS
  joinWith "! "
 
fighterGreet :: Fighter -> String
fighterGreet fighter =
  fighter.name <> " is " <> (toStringAs decimal fighter.age) <> " years old"
