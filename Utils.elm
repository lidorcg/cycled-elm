module Utils exposing (..)

import Task exposing(succeed)


sendMsg : msg -> Cmd msg
sendMsg msg =
    Task.perform (always msg) (succeed msg)
