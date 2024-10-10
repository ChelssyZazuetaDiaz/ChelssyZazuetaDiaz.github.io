$(document).ready(function (){
    //Function click boton dar carta 
    let cartas = new Array(54).fill(false);
    var cont = 0;
   $("#dar_carta").click (function(){
    var b = true;
    
  
  while(b){
    var num= Math.floor(Math.random()*54) +1;
    console.log("Numero de carta es"+num);
    if(cartas[num-1] == true){
      continue;
    }else{
        $("#carta_activa").html("<img src='img/"+num+".jpg'>");
        cartas[num-1] = true;
        b= false;
        cont++;

    }
    if(cont == 54){
        console.log("ya se dieron todaslas cartas");
        b= false;
    }
  }
   });
});