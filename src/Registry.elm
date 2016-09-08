module Registry exposing (content)

import Html exposing (..)
import Html.Attributes exposing (..)



link =
    { target = "http://www.target.com/gift-registry/registry/52ZTZ4e0kvpSk2EXqdnC2w"
    , amazon = "http://www.amazon.com/gp/registry/wedding/3ELNZSCAXTXUA"
    , potteryBarn = "https://secure.potterybarn.com/registry/3795892/registry-list.html"
    }


content : List (Html a)
content =
    [ p []
        [ text "The couple has registered for several items at "
        , a [ href link.target, target "_blank" ] [ text "Target" ]
        , text ", a handful at "
        , a [ href link.amazon, target "_blank" ] [ text "Amazon" ]
        , text ", and one special set at "
        , a [ href link.potteryBarn, target "_blank" ] [ text "Pottery Barn" ]
        , text
              """
              (who will be the lucky winner?!).
              Thank you so much for helping them to build their home!
              """
        ]
    ]

