// ==UserScript==
// @name         New Userscript
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://translate.yandex.ru/
// @icon         https://www.google.com/s2/favicons?sz=64&domain=yandex.ru
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    const addCSS = css => document.head.appendChild(document.createElement("style")).innerHTML=css;

    addCSS("body{ background:black; }")
})();