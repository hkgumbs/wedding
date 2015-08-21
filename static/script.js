var text = {};

function onClickListener(e) {
    var value = $(this).attr('value');
    if (value) {
        $('.modal .text').text(text[value]);
        $('.modal').fadeIn();
    } else
        $('.modal').fadeOut();
}

$('a[href="#"]').on('click', onClickListener)

