module Main where

import Prelude

import Data.Foldable (traverse_)
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Jelly.Aff (awaitBody)
import Jelly.Component (Component, text)
import Jelly.Hooks (runHooks_)
import Jelly.Hydrate (mount)

main :: Effect Unit
main = launchAff_ do
  appMaybe <- awaitBody
  liftEffect $ runHooks_ $ traverse_ (mount component) appMaybe

component :: forall m. Component m
component = text "Hello, Jelly!"
