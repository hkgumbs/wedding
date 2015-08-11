var text = {
    'story' : 'This is the story that we have to write! :)',
    'registry' : 'Hey, buy us stuff!',
    'venue' : 'I believe in miracles! You sexy thang.',
};

function onClickListener(e) {
    var value = $(this).attr('value');
    if (value) {
        $('.modal .text').text(text[value]);
        $('.modal').fadeIn();
    } else
        $('.modal').fadeOut();
}

$('a[href="#"]').on('click', onClickListener)

