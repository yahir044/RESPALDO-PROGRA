const api="http://pokeapi.co/api/v2/pokemon/1/";
const contenedor=document.getElementById("contenedor");


//fetch consulta a una url mediande de los verbos de http
async function consultarPokemon() 
{
    

let consulta= await fetch(api);
let datos= await consulta.json();
dibujarPokemon(datos);
}

function dibujarPokemon(datosPokemon)
{
    let rutaImagen=datosPokemon.sprites.other.home.front_default;
    let pokemon=`<h1>${datosPokemon.name}<h1>
    <img src="${rutaImagen}"/>    `;
    contenedor.innerHTML= pokemon;
}


consultarPokemon();