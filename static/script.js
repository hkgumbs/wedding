var connecting = "<p>Loading...</p>";

function appendToHead(data) {
    var import = $('head link[rel="import"]');
    if (import.children.length == 0)
        head.append(data);
}

function getValue(link) {
    return $(link).attr('value');
}

function cacheContent() {
    $.get(getValue(this));
}

function createModal() {
    $('.modal .contents').html(connecting);
    $('.modal .contents').load(getValue(this));
    $('.modal').fadeIn();
}

function hideModal() {
    $('.modal').fadeOut();
}

$.get('favicons', appendToHead);
$('a[value]').each(cacheContent);
$('a[value]').on('click', createModal);
$('a[back]').on('click', hideModal);

