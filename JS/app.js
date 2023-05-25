const buttonsContainer = document.querySelector('.buttons');
const leftBtn = document.querySelector('.left-btn');
const rightBtn = document.querySelector('.right-btn');
const verCodigos = document.querySelectorAll('.ver');
const verImagenes = document.querySelectorAll('.verimg');

let mover = 0;

leftBtn.addEventListener('click', () => {
    mover += 110;
    buttonsContainer.style.transform = `translateX(${mover}px)`; 
});

rightBtn.addEventListener('click', () => {
    mover -= 110;
    buttonsContainer.style.transform = `translateX(${mover}px)`; 
});

verCodigos.forEach(verCodigo => {
    verCodigo.addEventListener('click', mostrarCodigo);
});
verImagenes.forEach(verImagen => {
    verImagen.addEventListener('click', mostrarImagen);
});


function mostrarImagen(e) {
    let siguiente = e.target.nextElementSibling
    siguiente.classList.toggle('disp')
}
function mostrarCodigo(e) {
    let siguiente = e.target.nextElementSibling
    siguiente.classList.toggle('disp')
}