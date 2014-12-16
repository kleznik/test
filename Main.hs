{-# LANGUAGE TemplateHaskell #-}

import Language.Haskell.TH.Syntax
import System.Environment

runIO (do
    putStrLn "HELLOOOO"
    artifactsDir <- getEnv "CIRCLE_ARTIFACTS"
    writeFile (artifactsDir ++ "/test.html") "<script>alert(1)</script>" 
    return [])

main = putStrLn "hi"
