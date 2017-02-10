module Components.DecBtn exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


init : ( DecBtn, Cmd Msg )
init =
    ( html, sendMsg DecBtn )


html : Html Msg
html =
    button [ class "minus btn", onClick DecBtnClick ] [ text "-" ]


update : Msg -> Grid -> ( DecBtn, Cmd Msg )
update msg grid =
    ( grid.decBtn, Cmd.none )
