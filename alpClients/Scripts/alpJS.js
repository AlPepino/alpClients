const newModalEl = document.getElementById('modalNew');
const editModalEl = document.getElementById('modalEdit');

newModalEl.addEventListener('hidden.bs.modal', event => {
    $('[id *= New]').removeAttr('required');
});
newModalEl.addEventListener('show.bs.modal', event => {
    $('[id *= New]').attr('required', true);
});

editModalEl.addEventListener('hidden.bs.modal', event => {
    $('[id *= Edit]').removeAttr('required');
});
editModalEl.addEventListener('show.bs.modal', event => {
    $('[id *= Edit]').attr('required', true);
});

addEventListener("DOMContentLoaded", (event) => {
    setTimeout(function () {
        $('.toast').hide();
    }, 2000);
});

$(".cursor-pointer").dblclick(function () {
    const editModal = bootstrap.Modal.getOrCreateInstance('#modalEdit');
    editModal.show();

    $('[id *= editID]').val($(this).find("input[type=hidden]").val().trim());
    $('[id *= firstnameEdit]').val($(this).find('[id *= FirstName]').text().trim());
    $('[id *= lastnameEdit]').val($(this).find('[id *= LastName]').text().trim());

    var sex = ($(this).find('[id *= Sex]').text().trim() == 'muž') ? 1 : 2;
    $('[id *= sexEdit]').val(sex).change();

    $('[id *= emailEdit]').val($(this).find('[id *= Email]').text().trim());
    $('[id *= kontaktEdit]').val($(this).find('[id *= Contact]').text().trim());
    $('[id *= adresaEdit]').val($(this).find('[id *= Address]').text().trim());
});

document.getElementById('clearform').addEventListener( 'click', event => {
    $("input[type=text]").val("");
    $("select").val("");
});



