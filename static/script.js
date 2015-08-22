function setContents(data) {
    $('.modal .contents').html(data);
}

function loadAjax(callback) {
    if (typeof callback !== "function")
        callback = function(){};
    $.ajax($(this).attr('value')).done(callback);
}

function createModal() {
    this.f = loadAjax;
    this.f(setContents);
    $('.modal').fadeIn();
}

function hideModal() {
    $('.modal').fadeOut();
}

$('a[value]').each(loadAjax);
$('a[value]').on('click', createModal);
$('a[back]').on('click', hideModal);

