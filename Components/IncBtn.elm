module Components.IncBtn exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


init : ( IncBtn, Cmd Msg )
init =
    ( html, sendMsg IncBtn )


html : Html Msg
html =
    button [ class "plus btn", onClick IncBtnClick ] [ text "+" ]


update : Msg -> Grid -> ( IncBtn, Cmd Msg )
update msg grid =
    ( grid.incBtn, Cmd.none )
