module Venue exposing (content)

import Html exposing (..)
import Html.Attributes exposing (..)



ceremony = "https://www.google.com/maps/place/Grace+Chapel+Ministries/@38.3832812,-76.7206621,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x4a3f51d8bb3a35ee?hl=en"

reception = "https://www.google.com/maps?cid=12585060281842483986&hl=en&gl=us"


content : List (Html a)
content =
    [ p []
        [ text
              """
              Kofi and Amy will be getting married in St. Mary's County, Maryland.
              The ceremony will be held at
              """

        , a [ href ceremony, target "_blank"] [ text "Grace Chapel Ministries" ]

        , text ", and the reception will follow at "

        , a [ href reception, target "_blank" ] [ text "Bowles Farm" ]

        , text
              """
              . They look forward to dancing with you and enjoying a Southern Maryland lunch with y'all!
              """
        ]
    ]

