module Utils exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Task exposing (succeed)


sendMsg : msg -> Cmd msg
sendMsg msg =
    Task.perform (always msg) (succeed msg)


script : String -> Html msg
script url =
    node "script"
        [ src url
        ]
        []


stylesheet : String -> Html msg
stylesheet url =
    node "link"
        [ rel "stylesheet"
        , href url
        ]
        []
