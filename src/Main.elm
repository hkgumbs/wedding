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
    case msg of
        Home ->
            home

        Story ->
            modal Story.content

        Registry ->
            modal Registry.content

        Venue ->
            modal Venue.content


home : Html Msg
home =
    div [ class "home" ]
        [ div [ class "cover" ] []
        , div [ class "navigation" ]
            [ a [ onClick Story ] [ text "Story" ]
            , a [ onClick Registry ] [ text "Registry" ]
            , a [ onClick Venue ] [ text "Venue" ]
            , a [ href Rsvp.link, target "_blank" ] [ text "RSVP" ]
            ]
        ]


modal : List (Html Msg) -> Html Msg
modal content =
    div [ class "modal" ]
        [ div [ class "contents" ] content
        , div [ class "fade" ] []
        , div [ class "navigation" ]
            [ a [ onClick Home ] [ text "Back" ]
            ]
        ]



main : Program Never
main = Html.App.beginnerProgram
    { model = Home, view = view, update = always }

