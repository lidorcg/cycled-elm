module Main exposing (..)

import Html exposing (..)
import Models exposing (..)
import Components.IncBtn as IncBtn
import Components.DecBtn as DecBtn
import Components.Counter as Counter
import Components.Layout as Layout


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

        ( counterBtn, counterBtnMsg ) =
            Counter.init

        ( layoutBtn, layoutBtnMsg ) =
            Layout.init
    in
        ( { incBtn = incBtn
          , decBtn = decBtn
          , counter = counterBtn
          , layout = layoutBtn
          }
        , Cmd.batch
            [ incBtnMsg
            , decBtnMsg
            , counterBtnMsg
            , layoutBtnMsg
            ]
        )

view : Grid -> Html Msg
view grid =
  grid.layout

update : Msg -> Grid -> ( Grid, Cmd Msg )
update msg grid =
    let
        ( incBtn, incBtnMsg ) =
            IncBtn.update msg grid

        ( decBtn, decBtnMsg ) =
            DecBtn.update msg grid

        ( counterBtn, counterBtnMsg ) =
            Counter.update msg grid

        ( layoutBtn, layoutBtnMsg ) =
            Layout.update msg grid
    in
        ( { incBtn = incBtn
          , decBtn = decBtn
          , counter = counterBtn
          , layout = layoutBtn
          }
        , Cmd.batch
            [ incBtnMsg
            , decBtnMsg
            , counterBtnMsg
            , layoutBtnMsg
            ]
        )
