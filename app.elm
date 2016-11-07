module Greeting exposing (..)

import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import String exposing (..)

main =
  App.program
  {
    init = init,
    view = view,
    update = update,
    subscriptions = \_ -> Sub.none
  }

-- MODEL

type alias Model =
  { name : String
  }

-- UPDATE

type Msg
  = Rename String

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Rename str ->
      ({model | name = str}, Cmd.none)

-- INIT

init : (Model, Cmd Msg)
init =
  (Model "World", Cmd.none)

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text (String.concat(["Hello ", model.name])) ]
    , input [ placeholder ("Who should I greet ?"), onInput (Rename) ] []
    ]
