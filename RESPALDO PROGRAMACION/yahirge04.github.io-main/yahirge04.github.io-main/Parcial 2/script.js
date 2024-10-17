console.log("JS CARGADO");

let edad;//declaracion
edad=18;//asignacion
let nombre="Yahir";//declaro y asigno
console.log("Mi nombre es " + nombre)

var apellidoPaterno="Guzman"
console.log("Mi apellido paterno es " + apellidoPaterno)

var preferencia="Tacos"
if (true)
{
//  let preferencia="pizza";
    var preferencia="pizza";
    console.log(preferencia);
}
console.log(preferencia);

//var se utiliza para variables globales
//let se utiliza para variables locales
//que su alcance es limitado a solo a un bloque de codigo

const sexo="F";
console.log(sexo);
//sexo="M"; //variables de tipo constante
//no permiten la asignacion de nuevos valores
//Uncaught TypeError: Assignment to constant variable.
console.log(sexo);

//alt + 96
//codigo ASCII
let template = `Mi nombre es ${nombre} y mi apellido es ${apellidoPaterno} y mi edad es ${edad}`;
console.log(template);

