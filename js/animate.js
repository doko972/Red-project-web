
"use strict";
window.addEventListener("DOMContentLoaded", (event) => {
    animate_text();
});
// -------------------
function animate_text() {
    let delay = 10,
        delay_start = 0,
        contents,
        letters;

    document.querySelectorAll(".animate-text").forEach(function (elem) {
        contents = elem.textContent.trim();
        elem.textContent = "";
        letters = contents.split("");
        elem.style.visibility = 'visible';

        letters.forEach(function (letter, index_1) {
            setTimeout(function () {
                elem.textContent += letter;
            }, delay_start + delay * index_1);
        });
        delay_start += delay * letters.length;
    });
}

//CAROUSEL-IMG//
const picturesImg = document.querySelector(".pictures-img");
const thumbsImgs = document.querySelectorAll(".thumbs-img");
const prevBtn = document.querySelector(".pictures-prev");
const nextBtn = document.querySelector(".pictures-next");

const imagePaths = Array.from(thumbsImgs).map(img => img.src.replace("-s.png", "-l.png"));

let currentIndex = 0;
function showImage(index) {
    picturesImg.src = imagePaths[index];
}
function showNextImage() {
    currentIndex = (currentIndex + 1) % imagePaths.length;
    showImage(currentIndex);
}

function showPrevImage() {
    currentIndex = (currentIndex - 1 + imagePaths.length) % imagePaths.length;
    showImage(currentIndex);
}
prevBtn.addEventListener("click", showPrevImage);
nextBtn.addEventListener("click", showNextImage);

thumbsImgs.forEach((thumbImg, index) => {
    thumbImg.addEventListener("mouseenter", () => {
        currentIndex = index;
        showImage(currentIndex);
    });
});
////////////////////////
