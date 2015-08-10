var story = {
    text : 'This is the story that we have to write! :)',
    actions : []
};

var registry = {
    text : 'Hey, buy us stuff!',
    actions : [
        [
            'Target',
            'http://target.com',
            'static/target.png'
        ],
    ]
};

var venue = {
    text : 'I believe in miracles! You sexy thang.',
    actions : [
        [
            'Grace Chapel Ministries',
            'http://goo.gl/maps/OjFfB',
            'static/church.png'
        ],
        [
            'Bowles Farm',
            'http://goo.gl/maps/xAQY2',
            'static/reception.png'
        ]
    ]
};

var infos = {
    "story" : story,
    "registry" : registry,
    "venue" : venue
}

function onClickListener(e) {
    var info;
    switch ($(this).attr('value')) {
        case 'story':
            info = story;
            break;
        case 'registry':
            info = registry;
            break;
        case 'venue':
            info = venue;
            break;
        default:
            $('.modal').fadeOut();
            return;
    }
    displayModal(info);
}

function displayModal(info) {
    $('.modal .actions').empty();
    for (action of info.actions)
        addLink(action);
    $('.modal .text').text(info.text);
    $('.modal').fadeIn();
}

function addLink(action) {
    var element = $('<a></a>');
    var img = $('<img></img>');
    img.attr('title', action[0]);
    element.attr('href', action[1]);
    img.attr('src', action[2]);
    element.addClass('action');
    element.append(img);
    $('.modal .actions').append(element);
}

$('a[href="#"]').on('click', onClickListener)

