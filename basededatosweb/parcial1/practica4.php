<?php

$aciertos = 0;

$pregunta1 = $_POST["pregunta1"];
$pregunta2 = $_POST["pregunta2"];
$pregunta3 = $_POST["pregunta3"];

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
echo "<h3>3. I want _ apple and _ banana.</h3>";
if (is_array($pregunta3)) {
    // Join array elements into a string for display
    $respuesta_seleccionada = implode(', ', array_map('htmlspecialchars', $pregunta3));
} else {
    // If it's not an array, just sanitize the single string
    $respuesta_seleccionada = htmlspecialchars($pregunta3);
}

echo "<h5>Respuesta seleccionada: " . $respuesta_seleccionada . " ---- Correcta = A y AN </h5>";
$p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "A" || $pregunta3[$i] == "AN"){
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
 



// Calificación final
echo "CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%";

?>