module Access.Data.Time.Clock.POSIX
    ( module Data.Time.Clock.POSIX
    ) where

import Data.Time.Clock.POSIX

import Access.Core


class Access io => POSIXTimeAccess io where
    getPOSIXTime' :: io POSIXTime


instance POSIXTimeAccess IO where
    getPOSIXTime' = getPOSIXTime
