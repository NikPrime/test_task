let inputSubmit = document.getElementById('inputSubmit');
let form = document.getElementById('formSub');

inputSubmit.addEventListener('input', function (e) {
    form.submit();
}, false);

let checkbox = document.getElementById('completedCheckbox');

checkbox.onclick = function () {
    form.submit();
}