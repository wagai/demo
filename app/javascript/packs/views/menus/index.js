import Sortable from 'sortablejs';

document.addEventListener('turbolinks:load', function () {
    const el = document.getElementById('js-sortable-menus');
    new Sortable(el, {
        handle: "i.handle",
        axis: 'y',
        animation: 150,
    });
});
