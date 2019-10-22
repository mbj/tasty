module Test.Tasty.ConsoleFormat
  ( ConsoleFormat(..)
  , failFormat
  , okFormat
  , skippedFormat
  , infoOkFormat
  , infoFailFormat
  )
where

import System.Console.ANSI

data ConsoleFormat = ConsoleFormat
  { consoleIntensity :: ConsoleIntensity
  , colorIntensity   :: ColorIntensity
  , color            :: Color
  }

okFormat, failFormat, skippedFormat, infoOkFormat, infoFailFormat :: ConsoleFormat
failFormat     = ConsoleFormat BoldIntensity   Vivid Red
okFormat       = ConsoleFormat NormalIntensity Dull  Green
skippedFormat  = ConsoleFormat NormalIntensity Dull  Magenta
infoOkFormat   = ConsoleFormat NormalIntensity Dull  White
infoFailFormat = ConsoleFormat NormalIntensity Dull  Red
