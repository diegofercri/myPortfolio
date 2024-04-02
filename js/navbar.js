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


const dropdown2List0 = document.getElementById('dropdown2-list0');
const dropdown2Toggle0 = document.getElementById('dropdown2-toggle0');
const dropdown2List1 = document.getElementById('dropdown2-list1');
const dropdown2Toggle1 = document.getElementById('dropdown2-toggle1');
dropdown2Toggle0.addEventListener('click', e => {
    dropdown2List0.classList.toggle('dropdown2-list--show');
    if (dropdown2List1.classList.contains('dropdown2-list--show-1')) {
        dropdown2List1.classList.remove('dropdown2-list--show-1');
        dropdown2Toggle1.querySelector('.fa-angle-down').classList.toggle('rotated');
    }
    dropdown2Toggle0.querySelector('.fa-angle-down').classList.toggle('rotated');
    imgCloseChecker();
});

dropdown2Toggle1.addEventListener('click', e => {
    dropdown2List1.classList.toggle('dropdown2-list--show-1');
    if (dropdown2List0.classList.contains('dropdown2-list--show')) {
        dropdown2List0.classList.remove('dropdown2-list--show');
        dropdown2Toggle0.querySelector('.fa-angle-down').classList.toggle('rotated');
    }
    dropdown2Toggle1.querySelector('.fa-angle-down').classList.toggle('rotated');
    imgCloseChecker();
});

function imgCloseChecker() {
    // Verifica si ambos toggles están activados
    if (dropdown2List0.classList.contains('dropdown2-list--show') || dropdown2List1.classList.contains('dropdown2-list--show-1')) {
        // Asegura que la clase esté presente para ocultar la imagen
        navbar2.classList.add('navbar2-logo--hidden');
        setTimeout(function () {
            navbar2.classList.add('navbar2-logo--hidden2');
        }, 500)
    } else {
        // Asegura que la clase esté ausente para mostrar la imagen
        navbar2.classList.remove('navbar2-logo--hidden');
        navbar2.classList.remove('navbar2-logo--hidden2');
    }
}


window.addEventListener('resize',() => {
    if (navbar2.classList.contains('navbar2--show')) {
        navbar2.classList.remove('navbar2--show');
        mainMenu.classList.remove('main-menu--show');
    }
});