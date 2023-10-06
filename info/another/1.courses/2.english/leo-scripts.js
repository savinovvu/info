

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
    // if( e.which == 9 ) {
    if (event.keyCode == 9) {
        switcher = !switcher;
    }

});

setInterval(() => {
    if (!switcher) {
        return
    }
    let clicked = document.querySelector(".ll-button-sound__animated-icon");
    if (!clicked) {
        document.querySelector(".ll-button-sound").click();
    }
}, 30);
