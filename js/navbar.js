const navbar = document.getElementById('custom-navbar');
const toggleMenuOpen = document.getElementById('toggle-menu__open');
const mainMenu = document.getElementById('main-menu');
toggleMenuOpen.addEventListener('click', e => {
    navbar.classList.toggle('custom-navbar--show');
    mainMenu.classList.toggle('main-menu--show');
});

const elements = document.querySelectorAll('.toggle-menu__close');
elements.forEach(element => {
    element.addEventListener('click', () => {
        navbar.classList.toggle('custom-navbar--show');
        mainMenu.classList.toggle('main-menu--show');
    });
});

window.addEventListener('resize', () => {
    if (navbar.classList.contains('custom-navbar--show')) {
        navbar.classList.remove('custom-navbar--show');
        mainMenu.classList.remove('main-menu--show');
    }
});