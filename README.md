# PureScript in 45 Minutes


##  Installing PureScript
To install PureScript use `npm i -g purescript`

## Install Build Tools
Pulp and Bower are the default build tools for PureScript projects. To install those run `npm i -g pulp bower`

## Create a Project
The pulp build tool has commands that allow you to build a simple application in a matter seconds. To create a PureScript application in your current directory run `pulp init`. 

## Build a Project
The `pulp init` scaffolds out an application for you but you also have to build it before it can run. To do this run `pulp build`.

## Run a Project
Now that you have an application and it's build you can now run it. To do this run `pulp run`. If you have not done anything else to the scaffolded project then you should see `Hello, sailor!` in the console.

## Run a Project in the Browser
Because PureScript is universal you can build a project that works in the browser as well. To do this run `pulp build -O --to main.js` to create a bundle.

## Types
To learn about types open up the file `src/Data/Types.purs`.

## Pattern Matching
To learn about pattern matching open up the file `src/Data/PatternMatching.purs`.

## Foreign Function Interface
To learn about FFI open up the file `src/Data/FFI.purs`.

## Records
To learn about Records open up the file `src/Data/Records.purs`.

## Interesting Facts
- PureScript is strictly evaluated
- No-runtime as in Elm
- Side-effects are handled explicitly
- A bunch of cool operators (#, >>>, <<<, >>=, $, >>, <$>, etc.)
- Extremely flexible/expressive language compared (Patterns, Types, Guards, Records)
- Immutable data types
- Works seamlessly with JavaScript/Node (CommonJS modules)
- Property based testing (QuickCheck)
- Works on the server and in the browser meaning it's <s>Isomorphic</s> Universal
