let inputSubmit = document.getElementById('inputSubmit');
let checkbox = document.getElementById('completedCheckbox');

checkbox.onclick = function () {
    DisplayData();
}

inputSubmit.addEventListener('input', function (e) {
    DisplayData();
});

window.onload = function() {
    DisplayData();
}

function DisplayData() {
    let data = JSON.stringify({
        valueFromInput: document.getElementById('inputSubmit').value,
        isCheckboxCheck: document.getElementById('completedCheckbox').checked
    });
    let request = new XMLHttpRequest();
    request.open("POST", "/", true);
    request.setRequestHeader("Content-Type", "application/json");
    request.addEventListener("load", function () {
        let table = createTable(JSON.parse(request.response));
        $('#div-table').empty().append(table);

    });
    request.send(data);
}

function createTable(tasks) {
    var tableDiv = document.createElement("div");
    tableDiv.id = "new-div-table"
    var tableElem = document.createElement('table');

    for (let i = 0; i < tasks.newArrayData.length; i++) {
        var tableBody = document.createElement('tbody');
        let tr = document.createElement('tr');
        let td1 = document.createElement('td');
        let td2 = document.createElement('td');
        td1.innerHTML = tasks.newArrayData[i].id;
        td2.innerHTML = tasks.newArrayData[i].completed === true ? tasks.newArrayData[i].title.strike() :
                tasks.newArrayData[i].title;

        td2.style.borderColor = "#1b9fe0";
        td1.style.borderColor = "#1b9fe0";
        td1.style.borderStyle = "dashed";
        td2.style.borderStyle = "dashed";
        tr.appendChild(td1);
        tr.appendChild(td2);
        tableBody.appendChild(tr);
        tableElem.appendChild(tableBody);
        tableDiv.appendChild(tableElem);
    }
    tableElem.style.width = '100%';
    tableElem.style.borderCollapse = "collapse";
    tableElem.setAttribute('border', '1');
    tableDiv.style.paddingTop = "15px";
    return tableDiv;
}