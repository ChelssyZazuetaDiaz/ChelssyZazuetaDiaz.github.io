<?php


$jugador1 = $_POST["jugador1"];
$jugador2 = $_POST["jugador2"];

$gato = $_POST["gato"]; 


$jugadorX = $jugador1; 
$jugadorO = $jugador2; 

// CASOS
function verificarGanador($gato, $jugadorX, $jugadorO) {
    // Línea superior
    if ($gato[0] == $gato[1] && $gato[1] == $gato[2]) {
        if ($gato[0] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[0] == "O") {
            return "Ganador $jugadorO con O";
        }
    }
    
    // Línea del medio
    if ($gato[3] == $gato[4] && $gato[4] == $gato[5]) {
        if ($gato[3] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[3] == "O") {
            return "Ganador $jugadorO con O";
        }
    }

    // Línea inferior
    if ($gato[6] == $gato[7] && $gato[7] == $gato[8]) {
        if ($gato[6] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[6] == "O") {
            return "Ganador $jugadorO con O";
        }
    }
    
    // Columna izquierda
    if ($gato[0] == $gato[3] && $gato[3] == $gato[6]) {
        if ($gato[0] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[0] == "O") {
            return "Ganador $jugadorO con O";
        }
    }

    // Columna del medio
    if ($gato[1] == $gato[4] && $gato[4] == $gato[7]) {
        if ($gato[1] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[1] == "O") {
            return "Ganador $jugadorO con O";
        }
    }

    // Columna derecha
    if ($gato[2] == $gato[5] && $gato[5] == $gato[8]) {
        if ($gato[2] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[2] == "O") {
            return "Ganador $jugadorO con O";
        }
    }
    
    
    if ($gato[0] == $gato[4] && $gato[4] == $gato[8]) {
        if ($gato[0] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[0] == "O") {
            return "Ganador $jugadorO con O";
        }
    }
    
    if ($gato[2] == $gato[4] && $gato[4] == $gato[6]) {
        if ($gato[2] == "X") {
            return "Ganador $jugadorX con X";
        } elseif ($gato[2] == "O") {
            return "Ganador $jugadorO con O";
        }
    }
    
    
    if (!in_array("", $gato)) {
        return "Empate";
    }
    
    
    return null;
}

$resultado = verificarGanador($gato, $jugadorX, $jugadorO);

if ($resultado) {
    echo "<h1>$resultado</h1>";
} else {
    echo "<h1>El juego continúa...</h1>";
}

?>
