module Access.Data.Time.LocalTime
    ( module Data.Time.LocalTime

    , LocalTimeAccess(..)
    ) where

import Data.Time.LocalTime

import Access.Data.Time.Clock


class ClockAccess io => LocalTimeAccess io where
    getTimeZone'            :: UTCTime -> io TimeZone
    getCurrentTimeZone'     :: io TimeZone
    getZonedTime'           :: io ZonedTime
    utcToLocalZonedTime'    :: UTCTime -> io ZonedTime


instance LocalTimeAccess IO where
    getTimeZone'         = getTimeZone
    getCurrentTimeZone'  = getCurrentTimeZone
    getZonedTime'        = getZonedTime
    utcToLocalZonedTime' = utcToLocalZonedTime
