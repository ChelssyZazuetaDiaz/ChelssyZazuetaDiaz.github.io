<?php

    $nombre = isset($_GET["nombre"]) ? $_GET["nombre"] : 'No especificado';
    $edad = isset($_GET["edad"]) ? $_GET["edad"] : 'No especificado';
    $escuela = isset($_GET["escuela"]) ? $_GET["escuela"] : 'No especificado';
    $pasatiempo = isset($_GET["pasatiempo"]) ? $_GET["pasatiempo"] : 'No especificado';
    $curp = isset($_GET["curp"]) ? $_GET["curp"] : 'No especificado';
    $semestre = isset($_GET["semestre"]) ? $_GET["semestre"] : 'No especificado';
    
    if (is_numeric($edad) && $edad > 18) {
        echo "<h1>".$nombre." es mayor de edad</h1>";
    } else {
        echo "<h1>".$nombre." NO es mayor de edad</h1>";
    }

    echo "<h1>Nombre del Alumno: ".$nombre."</h1>";
    echo "<h2>Edad: ".$edad."</h2>";
    echo "<h2>Escuela: ".$escuela."</h2>";
    echo "<h2>Pasatiempo: ".$pasatiempo."</h2>";
    echo "<h2>Curp: ".$curp."</h2>";
    echo "<h2>Semestre: ".$semestre."</h2>";
?>
