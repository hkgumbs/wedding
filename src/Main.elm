import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App

import Story
import Registry
import Venue
import Rsvp



type Msg
    = Home
    | Story
    | Registry
    | Venue



view : Msg -> Html Msg
view msg =
    body []
        [ div [ class "cover" ] []
        , div [ class "navigation" ]
            [ a [ onClick Story ] [ text "Story" ]
            , a [ onClick Registry ] [ text "Registry" ]
            , a [ onClick Venue ] [ text "Venue" ]
            , a [ href Rsvp.link, target "_blank" ] [ text "Story" ]
            ]
        , div [ class "modal", hidden (msg == Home) ]
            [ div [ class "contents" ] (content msg)
            , div [ class "fade" ] []
            , div [ class "navigation" ]
                [ a [ onClick Home ] [ text "Back" ]
                ]
            ]
        ]


content : Msg -> List (Html a)
content msg =
    case msg of
        Home ->
            []

        Story ->
            Story.content

        Registry ->
            Registry.content

        Venue ->
            Venue.content



main : Program Never
main = Html.App.beginnerProgram
    { model = Home, view = view, update = always }

