<?php
    define('DB_NAME', 'db_test');      //DATABASE
    define('DB_USER', 'root');         //Usuario
    define('DB_PASSWORD', '');         // Sin PASS
    define('DB_HOST', 'localhost');    //Por el momento Local

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
?>