// 'use strict';

var dd_main = document.querySelector(".dd_main");

dd_main.addEventListener("click", function () {
    this.classList.toggle("active");
})

/**
 * navbar toggle
 */

const navOpenBtn = document.querySelector("[data-nav-open-btn]");
const navbar = document.querySelector("[data-navbar]");
const navCloseBtn = document.querySelector("[data-nav-close-btn]");
const overlay = document.querySelector("[data-overlay]");

const elemArr = [navCloseBtn, overlay, navOpenBtn];

for (let i = 0; i < elemArr.length; i++) {
    elemArr[i].addEventListener("click", function() {
        navbar.classList.toggle("active");
        overlay.classList.toggle("active");
    });
}

/**
 * toggle navbar & overlay when click any navbar-link
 */

const navbarLinks = document.querySelectorAll("[data-navbar-link]");

for (let i = 0; i < navbarLinks.length; i++) {
    navbarLinks[i].addEventListener("click", function() {
        navbar.classList.toggle("active");
        overlay.classList.toggle("active");
    });
}





/**
 * header & go-top-btn active
 * when window scroll down to 400px
 */

const header = document.querySelector("[data-header]");
const goTopBtn = document.querySelector("[data-go-top]");

window.addEventListener("scroll", function() {
    if (window.scrollY >= 400) {
        header.classList.add("active");
        goTopBtn.classList.add("active");
    } else {
        header.classList.remove("active");
        goTopBtn.classList.remove("active");
    }
});





 var aud = document.getElementById("video");
 aud.onplay = function() {
     $('#slide').hide();
 };
 aud.onended = function() {
     $('#full-screen').hide();
     $('#slide').fadeIn();
 };

 function playVid() {
     $('#slide').hide();
     $('#full-screen').show();
     aud.play();
 }





const slider = document.querySelector(".slider");
const nextBtn = document.querySelector(".next-btn");
const prevBtn = document.querySelector(".prev-btn");
const slides = document.querySelectorAll(".slide");
const slideIcons = document.querySelectorAll(".slide-icon");
const numberOfSlides = slides.length;
var slideNumber = 0;

//image slider next button
nextBtn.addEventListener("click", () => {
    slides.forEach((slide) => {
        slide.classList.remove("active");
    });
    slideIcons.forEach((slideIcon) => {
        slideIcon.classList.remove("active");
    });

    slideNumber++;

    if (slideNumber > (numberOfSlides - 1)) {
        slideNumber = 0;
    }

    slides[slideNumber].classList.add("active");
    slideIcons[slideNumber].classList.add("active");
});

//image slider previous button
prevBtn.addEventListener("click", () => {
    slides.forEach((slide) => {
        slide.classList.remove("active");
    });
    slideIcons.forEach((slideIcon) => {
        slideIcon.classList.remove("active");
    });

    slideNumber--;

    if (slideNumber < 0) {
        slideNumber = numberOfSlides - 1;
    }

    slides[slideNumber].classList.add("active");
    slideIcons[slideNumber].classList.add("active");
});

//image slider autoplay
var playSlider;

// var repeater = () => {
//     playSlider = setInterval(function() {
//         slides.forEach((slide) => {
//             slide.classList.remove("active");
//         });
//         slideIcons.forEach((slideIcon) => {
//             slideIcon.classList.remove("active");
//         });

//         slideNumber++;

//         if (slideNumber > (numberOfSlides - 1)) {
//             slideNumber = 0;
//         }

//         slides[slideNumber].classList.add("active");
//         slideIcons[slideNumber].classList.add("active");
//     }, 4000);
// }
// repeater();

//stop the image slider autoplay on mouseover
slider.addEventListener("mouseover", () => {
    clearInterval(playSlider);
});

//start the image slider autoplay again on mouseout
// slider.addEventListener("mouseout", () => {
//     repeater();
// });