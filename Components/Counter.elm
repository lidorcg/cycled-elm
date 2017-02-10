module Components.Counter exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Utils exposing (..)


init : ( Counter, Cmd Msg )
init =
    ( 0, sendMsg Counter )


update : Msg -> Grid -> ( Counter, Cmd Msg )
update msg grid =
    case msg of
        IncBtnClick ->
            ( grid.counter + 1, sendMsg Counter )

        DecBtnClick ->
            ( grid.counter - 1, sendMsg Counter )

        _ ->
            ( grid.counter, Cmd.none )
