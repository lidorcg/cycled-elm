module Components.Layout exposing (..)

import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)


init : ( Layout, Cmd Msg )
init =
    ( div [] [], Cmd.none )


html : IncBtn -> DecBtn -> Counter -> Layout
html incBtn decBtn counter =
    div []
        [ decBtn
        , div [] [ text (toString counter) ]
        , incBtn
        ]


update : Msg -> Grid -> ( Layout, Cmd Msg )
update msg grid =
    case msg of
        IncBtn ->
            ( html grid.incBtn grid.decBtn grid.counter, sendMsg Layout )

        DecBtn ->
            ( html grid.incBtn grid.decBtn grid.counter, sendMsg Layout )

        Counter ->
            ( html grid.incBtn grid.decBtn grid.counter, sendMsg Layout )

        _ ->
            ( grid.layout, Cmd.none )
