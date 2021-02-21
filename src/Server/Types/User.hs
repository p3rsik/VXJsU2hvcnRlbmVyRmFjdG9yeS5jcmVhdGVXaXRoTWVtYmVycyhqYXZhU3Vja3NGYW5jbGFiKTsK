{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}
{-# LANGUAGE DerivingVia    #-}

module Server.Types.User where

import           Data.Aeson          hiding (Encoding)
import           Data.Aeson.Deriving
import           Data.Text
import           GHC.Generics
import           Server.Types.Util

-- | Internal type used in "users/" route. Represents user.
data User = User
  { userEmail    :: Text -- ^ User email
  , userPassword :: Text -- ^ User password
  }
  deriving (Eq, Show, Generic)
  deriving (FromJSON, ToJSON) via (Encoding User)
