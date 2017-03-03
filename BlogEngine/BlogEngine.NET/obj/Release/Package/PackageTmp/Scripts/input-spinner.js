function spinner(inputs, webRoot) {
    inputs.each(function () {
        var el = $(this);
        //el.css('class', 'spin-inp');
        el.wrap('<span class="spinner"></span>');
        el.before('<div class="spin-btn spin-add"><img class="add" src="' + webRoot + 'Content/images/arrow_up.png" /></div>');
        el.after('<div class="spin-btn  spin-sub"><img  class="sub" src="' + webRoot + 'Content/images/arrow_down.png" /></div>');
        el.wrap('<div class="spin-inp"></div>');
        // substract
        el.parent().parent().on('click', '.sub', function () {
            if (el.val() > parseInt(el.attr('min')))
                el.val(function (i, oldval) { return --oldval; });
        });

        el.parent().parent().on('click', '.add', function () {
            if (el.val() < parseInt(el.attr('max')))
                el.val(function (i, oldval) { return ++oldval; });
        });
    });
};