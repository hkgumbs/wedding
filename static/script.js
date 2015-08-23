var loading = "<p>Loading...</p>";

function getValue(link) {
    return $(link).attr('value');
}

function cacheContent() {
    $.get(getValue(this));
}

function createModal() {
    $('.modal .contents').html(loading);
    $('.modal .contents').load(getValue(this));
    $('.modal').fadeIn();
}

function hideModal() {
    $('.modal').fadeOut();
}

$('a[value]').each(cacheContent);
$('a[value]').on('click', createModal);
$('a[back]').on('click', hideModal);

