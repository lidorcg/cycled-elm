module Main exposing (..)

import Html exposing (..)
import Msgs exposing (..)
import Models exposing (..)
import Components.IncBtn as IncBtn
import Components.DecBtn as DecBtn
import Components.Counter as Counter
import Components.Layout as Layout
import Components.DOM as DOM


main : Program Never Grid Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


init : ( Grid, Cmd Msg )
init =
    let
        ( incBtn, incBtnMsg ) =
            IncBtn.init

        ( decBtn, decBtnMsg ) =
            DecBtn.init

        ( counter, counterMsg ) =
            Counter.init

        ( layout, layoutMsg ) =
            Layout.init

        ( dom, domMsg ) =
            DOM.init
    in
        ( { incBtn = incBtn
          , decBtn = decBtn
          , counter = counter
          , layout = layout
          , dom = dom
          }
        , Cmd.batch
            [ incBtnMsg
            , decBtnMsg
            , counterMsg
            , layoutMsg
            , domMsg
            ]
        )


view : Grid -> Html Msg
view { dom } =
    dom


update : Msg -> Grid -> ( Grid, Cmd Msg )
update msg grid =
    let
        ( incBtn, incBtnMsg ) =
            IncBtn.update msg grid

        ( decBtn, decBtnMsg ) =
            DecBtn.update msg grid

        ( counter, counterMsg ) =
            Counter.update msg grid

        ( layout, layoutMsg ) =
            Layout.update msg grid

        ( dom, domMsg ) =
            DOM.update msg grid
    in
        ( { incBtn = incBtn
          , decBtn = decBtn
          , counter = counter
          , layout = layout
          , dom = dom
          }
        , Cmd.batch
            [ incBtnMsg
            , decBtnMsg
            , counterMsg
            , layoutMsg
            , domMsg
            ]
        )
