module Main exposing (..)

import Browser


type Page
    = InputPage


type Msg
    = NoOp


type alias Model =
    { currPage : Page
    }


type alias Flags
    = ()


init : Flags -> ( Model, Cmd Msg )
init _ =
        ( { currPage = InputPage }
        , Cmd.none )


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view _ =
    { title = "Setup"
    , body = []
    }


main : Program Flags Model Msg
main =
    Browser.document { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
