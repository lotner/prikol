/* Разработать страницу для оформления заказа товаров.

Реализовать форму для ввода наименования и стоимости. При нажатии на кнопку «Добавить», добавить введенные значения в таблицу.
Сделать кнопку расчёта стоимости заказа.
Поставить обработчик на изменение фона ячеек таблицы со стоимостью в тот момент, когда над ними находится указатель мыши.
Подготовить страницу, содержащую таблицу товаров и их стоимости. На базе этой страницы обеспечить возможность выбора строк и добавления их в таблицу формирования заказа.
Примечание: в качестве усложненного варианта задания допустимо использовать библиотеки jQuery и Dojo. */

function input() {

    let tr = document.createElement('tr');
    tr.className = 'highlight1';
    let td = document.createElement('td');
    let td1 = document.createElement('td');
    let table = document.getElementById('3');

    for (let i = 0; i < table.children.length; i++) {
        if (table.children[i].children[0].innerText === document.getElementById('1').value && table.children[i].children[1].innerText === document.getElementById('2').value) {
            alert('Это уже есть в списке товаров');
            return;
        }
    }
    table.appendChild(tr);
    tr.appendChild(td);
    tr.appendChild(td1);
    td.innerHTML = document.getElementById('1').value;
    td1.innerHTML = document.getElementById('2').value;
    document.getElementById('2').value = '';
    document.getElementById('1').value = '';
    tr.onclick = function (e) {
        output(e);
    };
}

    function output(event) {
        let tr = document.createElement('tr');
        let td = document.createElement('td');
        let td1 = document.createElement('td');
        let table = document.getElementById('5');
        tr.appendChild(td);
        tr.appendChild(td1);
        td.innerText = event.currentTarget.children[0].innerText;
        td1.innerText = event.currentTarget.children[1].innerText;

        for (let i = 0; i < table.children.length; i++) {
            if (
                table.children[i].children[0].innerText.includes(
                    tr.children[0].innerText
                )
            ) {
                tr.children[1].innerText =
                    +tr.children[1].innerText +
                    +table.children[i].children[1].innerText;

                tr.children[0].innerText += ` (${+table.children[i].children[1].innerText /
                    +event.currentTarget.children[1].innerText +
                    1
                    })`;
                table.removeChild(table.children[i]);
            }
        }

        table.appendChild(tr);
    }


    function oc() {
        let q = 0;
        let u = document.getElementById('5');
        for (let i = 1; i < u.children.length; i++) {
            q += + u.children[i].children[1].innerText;
        }
        alert(`Общая стоимость: ${q} рублей`);
    }
