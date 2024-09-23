
// let total = null;
// let first_number = null;
// let second_number = null;
// let operator_select = null;
// let result = null;
// let button = null;


function calcul() {
 
  total = [parseInt(first_number.value), parseInt(second_number.value)];

  if(isNaN(total[0]) || isNaN(total[1])){
    result.innerHTML = "Erreur. Merci de saisir un nombre"
  }
  else{
    if(operator_select.value == "1"){
      result.innerHTML = sum(total[0],total[1]);
    }
    if(operator_select.value == "2"){
      result.innerHTML = sub(total[0],total[1]);
    }
    if(operator_select.value == "3"){
      result.innerHTML = multiply(total[0],total[1]);
    }
    if(operator_select.value == "4"){
      result.innerHTML = divide(total[0],total[1]);
    }
  }

}

document.addEventListener("DOMContentLoaded", function() {

    result = document.getElementById("result");
    form = document.getElementById("form");
    first_number = document.getElementById("first_number");
    second_number = document.getElementById("second_number");
    operator_select = document.getElementById("operator_select");
    button = document.getElementById("button");
    operator = null
    total = 0

    button.addEventListener("click", calcul, false);

}, false);