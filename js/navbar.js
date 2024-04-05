const navbar2 = document.getElementById('navbar2');
const toggleMenuOpen = document.getElementById('toggle-menu__open');
const mainMenu = document.getElementById('main-menu');
toggleMenuOpen.addEventListener('click', e => {
    navbar2.classList.toggle('navbar2--show');
    mainMenu.classList.toggle('main-menu--show');
});

const elements = document.querySelectorAll('.toggle-menu__close');
elements.forEach(element => {
    element.addEventListener('click', () => {
        navbar2.classList.toggle('navbar2--show');
        mainMenu.classList.toggle('main-menu--show');
    });
});

window.addEventListener('resize', () => {
    if (navbar2.classList.contains('navbar2--show')) {
        navbar2.classList.remove('navbar2--show');
        mainMenu.classList.remove('main-menu--show');
    }
});