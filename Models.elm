module Models exposing (..)

import Msgs exposing (..)
import Html exposing (..)


-- MODELS


type alias Grid =
    { incBtn : IncBtn
    , decBtn : DecBtn
    , counter : Counter
    , layout : Layout
    , dom : DOM
    }


type alias IncBtn =
    Html Msg


type alias DecBtn =
    Html Msg


type alias Counter =
    Int


type alias Layout =
    Html Msg


type alias DOM =
    Html Msg
