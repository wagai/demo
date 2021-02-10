import Sortable from 'sortablejs';

$(function() {
    const el = document.getElementById('js-sortable-menus');
    new Sortable(el, {
        handle: "i.handle",
        axis: 'y',
        animation: 300,
        onUpdate: function (evt) {
            return $.ajax({
                url: `/api/menu/positions/${evt.oldIndex}`,
                type: 'patch',
                data: {
                    from: evt.oldIndex,
                    to: evt.newIndex
                }
            });
        }
    });
});
