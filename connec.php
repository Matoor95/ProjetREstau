<?php
try {
    $strconnection = 'mysql:host=localhost;dbname=restau';
    $pdo = new PDO($strconnection, 'root', '');
    echo "bonjour Matar connexion a la base de donnee reussi";
} catch (PDOException $e) {
    $message = 'ERREUR PDO' . $e->getMessage();
    die($message);
}
