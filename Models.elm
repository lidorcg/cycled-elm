module Models exposing (..)

import Html exposing (..)


-- MSGS


type Msg
    = IncBtn
    | DecBtn
    | Counter
    | IncBtnClick
    | DecBtnClick
    | Layout



-- MODELS


type alias Grid =
    { incBtn : IncBtn
    , decBtn : DecBtn
    , counter : Counter
    , layout : Layout
    }


type alias IncBtn =
    Html Msg


type alias DecBtn =
    Html Msg


type alias Counter =
    Int


type alias Layout =
    Html Msg
