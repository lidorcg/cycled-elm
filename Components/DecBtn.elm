module Components.DecBtn exposing (..)

import Models exposing (..)
import Utils exposing (sendMsg)
import Html exposing (..)
import Html.Events exposing (onClick)


init : ( DecBtn, Cmd Msg )
init =
    ( html, sendMsg DecBtn )


html : Html Msg
html =
    button [ onClick DecBtnClick ] [ text "-" ]


update : Msg -> Grid -> ( DecBtn, Cmd Msg )
update msg grid =
    ( grid.decBtn, Cmd.none )
