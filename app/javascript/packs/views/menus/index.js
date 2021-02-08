import Sortable from 'sortablejs';
require("jquery")

$(document).on('turbolinks:load', function () {
    const el = document.getElementById('js-sortable-menus');
    new Sortable(el, {
        handle: "i.handle",
        axis: 'y',
        animation: 150,
        onUpdate: function (evt) {
            return $.ajax({
                url: `/api/menus/${evt.oldIndex}`,
                type: 'patch',
                data: {
                    from: evt.oldIndex,
                    to: evt.newIndex
                }
            });
        }
    });
});
