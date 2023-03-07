module Counter exposing (main)

import Browser
import Html exposing (button, div, text, Html)
import Html.Events exposing (onClick)
import Json.Decode as D

main : Program D.Value Int Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }

init : D.Value -> ( Int, Cmd msg )
init flags =
    ( Result.withDefault 0 <| D.decodeValue flagsDecoder flags
    , Cmd.none
    )

flagsDecoder : D.Decoder Int
flagsDecoder =
        (D.field "count" D.int)

type Msg = Inc | Dec

update : Msg -> Int -> (Int, Cmd msg)
update msg count =
    case msg of
        Inc -> (count + 1, Cmd.none)
        Dec -> (count - 1, Cmd.none)

view : Int -> Html Msg
view count =
    div []
      [ text <| String.fromInt count
      , button [ onClick Inc ] [ text "+" ]
      , button [ onClick Dec ] [ text "-" ]
      ]