module Access.Data.Time.Clock
    ( module Data.Time.Clock

    , ClockAccess(..)
    ) where

import Data.Time.Clock

import Access.Core


class Access io => ClockAccess io where
    getCurrentTime' :: io UTCTime


instance ClockAccess IO where
    getCurrentTime' = getCurrentTime
