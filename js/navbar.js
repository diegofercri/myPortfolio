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