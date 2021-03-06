module Story exposing (content)

import Html exposing (Html)



p : String -> Html a
p text = Html.p [] [ Html.text text ]


content : List (Html a)
content =
    [ p """
        Kofi and Amy both graduated from the University of Maryland.
        While there, they individually got involved with a Christian campus ministry called Cru.
        """

    , p """
        Though they each knew the other existed,
        they didn't become friends until they were trapped in a car together for a 20-hour,
        spring-break road trip to Panama City Beach with Cru.
        During this car trip they chatted and found that they had a similar sense of humor
        and could easily carry a conversation.
        """

    , p """
        After this trip they maintained their friendship, hanging out with mutual friends frequently.
        In the fall, Kofi asked Amy on a date.
        The planned location was closed,
        but that didn't stop them from enjoying each other's company for several hours
        in downtown Annapolis.
        It took a few short months, many laughs, and hours of conversation for them to fall in love.
        During this time Kofi received and accepted a job offer in Chicago. He would move in July.
        """

    , p """
        It was during the spring that Kofi decided he wanted to lock it down and change Amy's last name.
        """

    , p """
        In an elaborate plan,
        Kofi got his friends to convince Amy that they were throwing a surprise party for his birthday.
        Before the surprise party, Kofi and Amy went out to dinner and to see the sunset at Great Falls.
        At the waterfall, Kofi serenaded Amy with one of her favorite songs,
        Tell Her You Do by Dave Barnes, on the ukulele.
        At the conclusion of the song, he asked her to marry him and she joyfully said yes!
        Afterwards, Kofi exclaimed, now let's go to our party!
        He had planned a surprise engagement party for everyone to celebrate the future
        Mr. And Mrs. Gumbs.
        """

    , p """
        Kofi and Amy will get married January 9, 2016 at 1pm and move to Chicago
        to begin their life together in Illinois.
        """
    ]

