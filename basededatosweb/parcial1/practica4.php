<?php

$aciertos = 0;
$nombre = htmlspecialchars(trim($_POST['nombre']));
$pregunta1 = $_POST["pregunta1"];
$pregunta2 = $_POST["pregunta2"];
$pregunta3 = $_POST["pregunta3"];
$pregunta4 = isset($_POST['pregunta4']) ? $_POST['pregunta4'] : null;
$pregunta5 = isset($_POST['pregunta5']) ? $_POST['pregunta5'] : null;
$pregunta6 = isset($_POST['pregunta6']) ? $_POST['pregunta6'] : null;
$pregunta7 = isset($_POST['pregunta7']) ? $_POST['pregunta7'] : null;
$pregunta8 = isset($_POST['pregunta8']) ? $_POST['pregunta8'] : null;
$pregunta9 = isset($_POST['pregunta9']) ? $_POST['pregunta9'] : null;
$pregunta10 = isset($_POST['pregunta10']) ? $_POST['pregunta10'] : null;

echo "<h1>Resultados de $nombre</h1>";
    

    
// Valida pregunta 1. Which sentence is correct?
echo "<h3>1. Which sentence is correct?</h3>";
echo "<h5>Respuesta seleccionada: " . htmlspecialchars($pregunta1) . " ---- Correcta = B) She goes to the store.</h5>";
if ($pregunta1 == "B) She goes to the store.") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}

// Valido pregunta 2: He ___ to the gym every day.
echo "<h3>2. He ___ to the gym every day.</h3>";
echo "<h5>Respuesta seleccionada: " . htmlspecialchars($pregunta2) . " ---- Correcta = GOES</h5>";
if (strtoupper(trim($pregunta2)) == "GOES") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}

// Pregunta 3 - Which of the following sentences are correct?
echo "<h3>3. I want _ apple and _ banana. (Select 2)</h3>";
if (is_array($pregunta3)) {
    
    $respuesta_seleccionada = implode(', ', array_map('htmlspecialchars', $pregunta3));
} else {
    
    $respuesta_seleccionada = htmlspecialchars($pregunta3);
}

echo "<h5>Respuesta seleccionada: " . $respuesta_seleccionada . " ---- Correcta = A) a or B) an </h5>";
$p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "A) a" || $pregunta3[$i] == "B) an"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    }
     
    //valida pregunta 4. Which sentence uses the past tense correctly?

    echo "<h3>4. Which sentence uses the past tense correctly?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = B) I saw the movie yesterday.</h5>";
    if($pregunta4 == "B) I saw the movie yesterday."){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
//------FIN de la pregunta 4 ------------------
   

//Valido pregunta 5. They ______ (be) playing soccer right now.
echo "<h3>5. They ______ (be) playing soccer right now.</h3>";
echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = are </h5>";
if(strtoupper(trim($pregunta5)) == "ARE"){
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}


// Pregunta 6 - Which of the following sentences are correct?
echo "<h3>6. Which of the following sentences are correct? (Select 2)</h3>";
if (is_array($pregunta6)) {
    
    $respuesta_seleccionada = implode(', ', array_map('htmlspecialchars', $pregunta6));
} else {
    
    $respuesta_seleccionada = htmlspecialchars($pregunta6);
}

echo "<h5>Respuesta seleccionada: " . $respuesta_seleccionada . " ---- Correcta = A) He plays soccer or C) He is playing soccer</h5>";
$p6_respuestas_correctas = 0;

    if(count($pregunta6) == 2){
        for($i=0; $i<count($pregunta6); $i++){
            if($pregunta6[$i] == "A) He plays soccer." || $pregunta6[$i] == "C) He is playing soccer."){
                $p6_respuestas_correctas ++;
            }
        }
        if($p6_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    }

    // Valida pregunta 7. What is the plural of "child"?
echo "<h3>7. What is the plural of (child)?</h3>";
echo "<h5>Respuesta seleccionada: " . htmlspecialchars($pregunta7) . " ---- Correcta = B) Children.</h5>";
if ($pregunta7 == "B) Children.") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}
   
       //Valido pregunta 8.  He _______ (have) finished his homework already.
echo "<h3>8.  He _______ (have) finished his homework already.</h3>";
echo "<h5>Repuesta seleccionada ".$pregunta8." ---- Correcta = has </h5>";
if(strtoupper(trim($pregunta8)) == "HAS"){
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}
  

// Pregunta 9 - Which of the following are correct prepositions?
echo "<h3>9. Which of the following are correct prepositions? (Select 2)</h3>";
if (is_array($pregunta9)) {
    
    $respuesta_seleccionada = implode(', ', array_map('htmlspecialchars', $pregunta9));
} else {
    
    $respuesta_seleccionada = htmlspecialchars($pregunta9);
}

echo "<h5>Respuesta seleccionada: " . $respuesta_seleccionada . " ---- Correcta = A) She is good at math. or C) She is good with numbers.</h5>";
$p9_respuestas_correctas = 0;

    if(count($pregunta9) == 2){
        for($i=0; $i<count($pregunta9); $i++){
            if($pregunta9[$i] == "A) She is good at math." || $pregunta9[$i] == "C) She is good with numbers."){
                $p9_respuestas_correctas ++;
            }
        }
        if($p9_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    }


    // Valida pregunta 10. Choose the correct preposition: She is interested _ learning Spanish.
echo "<h3>10. She is interested _ learning Spanish.</h3>";
echo "<h5>Respuesta seleccionada: " . htmlspecialchars($pregunta10) . " ---- Correcta = A) in</h5>";
if ($pregunta10 == "A) in") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px'><hr>";
} else {
    echo "<img src='incorrecta.jpg' width='50px'><hr>";
}


// Calificación final

echo "CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%"; 


if ($aciertos <= 60) {
    echo "<img src='goodjob.jpg' alt='Aprobado' width='200px' style='margin-top: 5px;' 'margin-left: 50px;' ><hr>";
} else {
    echo "<img src='goodluck.webp' alt='Reprobado' width='200px'>";
}

?>