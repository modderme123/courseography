{-# LANGUAGE OverloadedStrings #-}

module Css.FourOhFourCss where

import Clay
import Prelude hiding ((**))
import Data.Monoid
import Css.Constants

{- aboutStyles
 - Generates CSS for the about page. -}

fourOhFourStyles = do
    "#contentDiv" ? do
        margin nil (px 25) nil (px 25) 
    "#picDiv" ? do
        margin nil (px 25) nil (px 25)
    "#links" ? do
        "list-style-type" -: "none"
