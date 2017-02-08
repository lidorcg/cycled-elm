module Components.IncBtn exposing (..)

import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)
import Html.Events exposing (onClick)


init : ( IncBtn, Cmd Msg )
init =
    ( html, sendMsg IncBtn )


html : Html Msg
html =
    button [ onClick IncBtnClick ] [ text "+" ]


update : Msg -> Grid -> ( IncBtn, Cmd Msg )
update msg grid =
    ( grid.incBtn, Cmd.none )
