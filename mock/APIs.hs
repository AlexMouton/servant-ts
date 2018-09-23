{-# LANGUAGE DeriveAnyClass #-}

module APIs where

import           Data.Text
import           GHC.Generics
import           Servant.API
import           Servant.Foreign     (Foreign, GenerateList, HasForeign,
                                      HasForeignType, Req, listFromAPI, typeFor,
                                      _reqReturnType)
import           Typescript

data User = User
    {name    :: Text
    ,age     :: Int
    ,isAdmin :: Bool
    } deriving (Generic, TypescriptType)


type SimpleAPI = "users" :> Get '[JSON] User
