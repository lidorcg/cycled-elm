module Components.Layout exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)
import Html.Attributes exposing (class)


init : ( Layout, Cmd Msg )
init =
    ( div [] [], Cmd.none )


html : IncBtn -> DecBtn -> Counter -> Layout
html incBtn decBtn counter =
    div [ class "container" ]
        [ h1 [ class "count" ] [ text <| toString counter ]
        , incBtn
        , decBtn
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
