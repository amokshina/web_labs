const mainForm = document.getElementById("main-form");

k = 0;

s = 0;

function isNotEmpty(val) {
    if (val.trim() === '') {
        alert('Поле не должно быть пустым');
        return false;
    }
    return true;
}

function goodNumber(val) {
    if (isNaN(val) || val <= 0) {
        alert('Введите числовое значение > 0');
        return false;
    }
    return true;
}

mainForm.addEventListener("submit", function (event) {
    event.preventDefault(); // убираем отправку на сервер чтобы обработать самостоятельно

    var name = mainForm.Name.value;
    var price = mainForm.Price.value;
    var amount = mainForm.Amount.value;

    if (isNotEmpty(name) && isNotEmpty(price) && isNotEmpty(amount) && goodNumber(price) && goodNumber(amount) && Number.isInteger(amount)) {
        k = k + 1;

        var table = document.getElementById("busketBody");
        var row = table.insertRow(-1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell3.classList.add("new-selector");
        var cell4 = row.insertCell(3);
        cell1.innerHTML = k;
        cell2.innerHTML = name;
        cell3.innerHTML = price;
        cell4.innerHTML = amount;

        s += parseInt(price) * parseInt(amount);
        console.log(s);
        console.log(cell3);
    }

    mainForm.Name.value = "";
    mainForm.Price.value = "";
    mainForm.Amount.value = "";
})


document.getElementById("count").addEventListener("click", function (event) {
    var p = document.getElementById("totalCost");
    // var a
    p.innerHTML = "Общая стоимость корзины:  <h3>" + s + " ₽ </h3> "
    console.log(s);
})

const btns = document.querySelectorAll(".busketButton");

btns.forEach(btn => {
    btn.addEventListener("click", function () {

        var nameE = btn.name;

        console.log(btn.name);

        var price = document.querySelector("#" + btn.name).textContent;
        console.log(price);

        k = k + 1;
        var table = document.getElementById("busketBody");
        var row = table.insertRow(-1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell3.classList.add("new-selector");
        var cell4 = row.insertCell(3);
        cell1.innerHTML = k;
        cell2.innerHTML = nameE;
        cell3.innerHTML = price;
        cell4.innerHTML = 1;
        s += parseInt(price);
    })
})





// var cells = document.getElementsByClassName(".new-selector");

// console.log(cells);

// cells.forEach(cell => {
//     cell.addEventListener("mouseover", function() {
//         this.style.backgroundColor = "#ee0057";
//         console.log("red bg");
//         console.log('Курсор мыши наведен на элемент'); // хуета
//     }, true);

//     cell.addEventListener("mouseout", function(e) {
//         this.style.backgroundColor = "white";
//         console.log("white bg");
//     });
// });

