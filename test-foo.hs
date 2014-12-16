module Main where

import System.Exit
import System.Environment

main = do
  artifactsDir <- getEnv "CIRCLE_ARTIFACTS"
  writeFile (artifactsDir ++ "/foo.html") "<script>alert(1)</script>"
  exitSuccess
