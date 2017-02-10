module Components.DOM exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Utils exposing (sendMsg, stylesheet)
import Html exposing (..)


init : ( DOM, Cmd Msg )
init =
    ( div [] [ stylesheet "public/css/main.css" ], Cmd.none )


html : Layout -> DOM
html layout =
    div []
        [ stylesheet "public/css/main.css"
        , layout
        ]


update : Msg -> Grid -> ( Layout, Cmd Msg )
update msg grid =
    case msg of
        Layout ->
            ( html grid.layout, sendMsg DOM )

        _ ->
            ( grid.dom, Cmd.none )
