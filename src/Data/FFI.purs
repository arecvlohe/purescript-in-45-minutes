module Data.FFI where

import Prelude

import Global (isNaN)

{-
  One of the nice parts of PureScript is its seamless ability to work with
  CommonJS modules. I would way this is one of it's strengths. Let's create a functions in
  JavaScript and import it into this module. All you need to do is create a file
  with the same name as this module and export a fucntion from it.
-}

foreign import unsafeParseFloat :: String -> Number

handleParseFloat :: String -> Number
handleParseFloat str =
  if isNaN $ unsafeParseFloat(str)
    then 0.0
    else unsafeParseFloat(str)
  
