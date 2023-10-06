

setInterval(() => {
    let continueBtn = document.querySelector(".ll-leokit__training-final__continue");
    if (continueBtn) {
        continueBtn.click();
    } else {
        let btn = document.querySelector("button.ll-words-cards__answer__m-enter");
        if (btn) {
            btn.click();
        }
        let secBtn = document.querySelector("button.ll-words-cards__answer__m-give-up");
        if (secBtn) {
            secBtn.click();
        }
    }
}, 4000);


document.addEventListener('keydown', function(event) {
    if (event.ctrlKey ) {
        console.log("go");
        document.querySelector(".ll-button-sound").click();
    }
});

// <div class="ll-button-sound__animated-icon">

let switcher = true;
document.addEventListener('keydown', function(event) {
    if (event.ctrlKey9) {
        switcher = !switcher;
    }

});

setInterval(() => {
    if (!switcher) {
        return
    }


}, 30);


.listContainer-MgF6KBas


===============


    var intervalId; // переменная для хранения идентификатора интервала

function clickDivs() {
     var d = [...document.querySelectorAll('.listContainer-MgF6KBas > div > div > div > div')];
     var d = [...document.querySelectorAll('.listContainer-MgF6KBas > div > div > div')];
    d[6].click();
    // выбираем все нужные элементы
    var col = [...document.querySelectorAll('.symbol-RsFlttSS.common-tooltip-html.common-tooltip-vertical.apply-common-tooltip')];
    var col = [...document.querySelectorAll('.logo-RsFlttSS.container-M1mz4quA')];
    var col = [...document.querySelectorAll('.wrap-IEe5qpW4')];
    var col = [...document.querySelectorAll('.js-follow-user')];
    col[6].click();


    let index = 0;
    intervalId = setInterval(() => {
        divs[index].click(); // кликаем по элементу
        index++;
        if (index >= divs.length) {
            index = 0; // если дошли до конца, начинаем сначала
        }
    }, 3000);
}

document.addEventListener('keydown', (event) => {
    if (event.ctrlKey) {
        clearInterval(intervalId); // если нажата клавиша ctrl, останавливаем интервал
    }
});

document.addEventListener('keyup', (event) => {
    if (event.ctrlKey) {
        clickDivs(); // если отпущена клавиша ctrl, запускаем интервал снова
    }
});

clickDivs(); // запускаем интервал при загрузке страницы
