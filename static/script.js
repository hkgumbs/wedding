var story = {
    text : 'This is the story that we have to write! :)',
    actions : {}
};

var registry = {
    text : 'Hey, buy us stuff!',
    actions : {
        'Target' : 'http://target.com',
        'Bed Bath & Body Work' : 'http://www.sanrio.com/'
    }
};

var venue = {
    text : 'I believe in miracles! You sexy thang.',
    actions : {
        'Grace Chapel Ministries' : 'http://goo.gl/maps/OjFfB',
        'Bowles Farm' : 'http://goo.gl/maps/xAQY2'
    }
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
    $('.modal .text').text(info.text);
    $('.modal').fadeIn();
}

$('a[href="#"]').on('click', onClickListener)

