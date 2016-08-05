$('[data-toggle="tabs"] a').click(function (e) {
    e.preventDefault();
    var parent = $(this).parent().parent('ul');
    $(parent).find('li').removeClass('active');
    $(this).parent('li').addClass('active');
    var target = $(this).attr('href');
    var tab_target = $(parent).attr('data-target');
    $(''+tab_target).find('.tab-pane').removeClass('active');
    $(''+tab_target).find(''+target).addClass('active');
});
