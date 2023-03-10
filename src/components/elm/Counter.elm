module Counter exposing (main)

import Browser
import Html exposing (button, div, text, Html)
import Html.Events exposing (onClick)

main : Program () Int Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }

init : Int
init  =
    0


type Msg = Inc | Dec

update : Msg -> Int -> Int
update msg count =
    case msg of
        Inc -> (count + 1)
        Dec -> (count - 1)

view : Int -> Html Msg
view count =
    div []
      [ text <| String.fromInt count
      , button [ onClick Inc ] [ text "+" ]
      , button [ onClick Dec ] [ text "-" ]
      ]